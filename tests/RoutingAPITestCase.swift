import StadiaMaps
import XCTest

final class RoutingAPITestCase: IntegrationXCTestCase {
    let locationA = Coordinate(lat: 40.042072, lon: -76.306572)
    let locationB = Coordinate(lat: 39.992115, lon: -76.781559)
    let locationC = Coordinate(lat: 39.984519, lon: -76.6956)

    func testRoute() async throws {
        let req = RouteRequest(units: .mi,
                               id: "route",
                               locations: [
                                   RoutingWaypoint(lat: locationA.lat, lon: locationA.lon),
                                   RoutingWaypoint(lat: locationB.lat, lon: locationB.lon),
                               ],
                               costing: .auto,
                               costingOptions: CostingOptions(auto: AutoCostingOptions(useHighways: 0.3)))
        guard case let .typeRouteResponse(res) = try await RoutingAPI.route(routeRequest: req) else {
            XCTFail("Expected a Valhalla JSON format route response")
            return
        }
        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.trip.status, 0)
        XCTAssertEqual(res.trip.units, .miles)
        XCTAssertEqual(res.trip.legs.count, 1)
        XCTAssertEqual(res.alternates?.count ?? 0, 0)
    }

    func testRouteWithNavigationAids() async throws {
        let req = RouteRequest(units: .mi,
                               format: .osrm,
                               bannerInstructions: true,
                               filters: AnnotationFilters(action: .include, attributes: [
                                   .shapeAttributesPeriodSpeedLimit,
                               ]),
                               id: "route",
                               locations: [
                                   RoutingWaypoint(lat: locationA.lat, lon: locationA.lon),
                                   RoutingWaypoint(lat: locationB.lat, lon: locationB.lon),
                               ],
                               costing: .auto,
                               costingOptions: CostingOptions(auto: AutoCostingOptions(useHighways: 0.3)))
        guard case let .typeOsrmRouteResponse(res) = try await RoutingAPI.route(routeRequest: req) else {
            XCTFail("Expected an OSRM format route response")
            return
        }
        XCTAssertEqual(.ok, res.code)
        XCTAssertEqual(res.routes?.count, 1)
        XCTAssert(res.routes!.first!.legs.first!.steps.contains { step in
            step.bannerInstructions?.count ?? 0 > 0
        })
    }

    func testOsrmParseRegression() async throws {
        let json = """
        {
            "modifier": "right",
            "instruction": "Exit the roundabout onto Rua António da Conceição Bento.",
            "type": "exit roundabout",
            "bearing_after": 15,
            "bearing_before": 316,
            "location": [
                -9.380354,
                39.358754
            ]
        }
        """
        let maneuver = try JSONDecoder().decode(OsrmStepManeuver.self, from: json.data(using: .utf8)!)
        XCTAssertEqual(maneuver.type, .exitRoundabout, "Failed to parse maneuver type")
    }

    func testRouteWithAlternates() async throws {
        let req = RouteRequest(units: .mi,
                               id: "route",
                               locations: [
                                   RoutingWaypoint(lat: locationA.lat, lon: locationA.lon),
                                   RoutingWaypoint(lat: locationB.lat, lon: locationB.lon),
                               ],
                               costing: .auto,
                               costingOptions: CostingOptions(auto: AutoCostingOptions(useHighways: 0.3)),
                               alternates: 1)
        guard case let .typeRouteResponse(res) = try await RoutingAPI.route(routeRequest: req) else {
            XCTFail("Expected a Valhalla JSON format route response")
            return
        }
        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.trip.status, 0)
        XCTAssertEqual(res.trip.units, .miles)
        XCTAssertEqual(res.trip.legs.count, 1)
        XCTAssertEqual(res.alternates?.count, 1)
    }

    func testRouteWithElevation() async throws {
        let req = RouteRequest(units: .mi,
                               id: "route",
                               locations: [
                                   RoutingWaypoint(lat: locationA.lat, lon: locationA.lon),
                                   RoutingWaypoint(lat: locationB.lat, lon: locationB.lon),
                               ],
                               costing: .auto,
                               costingOptions: CostingOptions(auto: AutoCostingOptions(useHighways: 0.3)),
                               elevationInterval: 30)
        guard case let .typeRouteResponse(res) = try await RoutingAPI.route(routeRequest: req) else {
            XCTFail("Expected a Valhalla JSON format route response")
            return
        }
        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.trip.status, 0)
        XCTAssertEqual(res.trip.units, .miles)
        XCTAssertEqual(res.trip.legs.count, 1)
        XCTAssertGreaterThan(res.trip.legs.first?.elevation?.count ?? 0, 1)
    }

    func testHybridBicycleRoute() async throws {
        // Regression test for user-reported issue
        let req = RouteRequest(units: .km,
                               id: "route",
                               locations: [
                                   RoutingWaypoint(lat: locationA.lat, lon: locationA.lon),
                                   RoutingWaypoint(lat: locationB.lat, lon: locationB.lon),
                               ],
                               costing: .bicycle,
                               costingOptions: CostingOptions(bicycle: BicycleCostingOptions(bicycleType: .hybrid, useRoads: 0.4, useHills: 0.6)))
        guard case let .typeRouteResponse(res) = try await RoutingAPI.route(routeRequest: req) else {
            XCTFail("Expected a Valhalla JSON format route response")
            return
        }
        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.trip.status, 0)
        XCTAssertEqual(res.trip.units, .kilometers)
        XCTAssertEqual(res.trip.legs.count, 1)
    }

    func testOptimizedRoute() async throws {
        let req = OptimizedRouteRequest(units: .mi,
                                        id: "optimized_route",
                                        locations: [
                                            locationA,
                                            locationB,
                                            locationC,
                                            locationA,
                                        ],
                                        costing: .auto,
                                        costingOptions: CostingOptions(auto: AutoCostingOptions(useHighways: 0.3)))
        guard case let .typeRouteResponse(res) = try await RoutingAPI.optimizedRoute(optimizedRouteRequest: req) else {
            XCTFail("Expected a Valhalla JSON format route response")
            return
        }
        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.trip.status, 0)
        XCTAssertEqual(res.trip.units, .miles)
        XCTAssert(res.trip.legs.count > 1)
    }

    func testTimeDistanceMatrix() async throws {
        let req = MatrixRequest(id: "matrix",
                                sources: [
                                    MatrixWaypoint(lat: 58.891957, lon: 22.726262),
                                    MatrixWaypoint(lat: 59.1558, lon: 23.762758),
                                ],
                                targets: [
                                    MatrixWaypoint(lat: 59.176153, lon: 23.846605),
                                    MatrixWaypoint(lat: 59.562853, lon: 23.096114),
                                ],
                                costing: .bicycle)
        let res = try await RoutingAPI.timeDistanceMatrix(matrixRequest: req)
        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(req.sources.count, res.sources.count)
        XCTAssertEqual(req.targets.count, res.targets.count)
        XCTAssert(res.sourcesToTargets[0].count > 1)
        XCTAssertEqual(res.units, .kilometers)
    }

    func testNearestRoads() async throws {
        let req = NearestRoadsRequest(
            locations: [locationA, locationB, locationC])
        let res = try await RoutingAPI.nearestRoads(nearestRoadsRequest: req)
        XCTAssertEqual(res.count, req.locations.count)
        XCTAssert(res[0].edges?.count ?? 0 > 1)
    }

    func testIsochrone() async throws {
        let req = IsochroneRequest(
            id: "isochrone",
            locations: [locationA],
            costing: .pedestrian,
            contours: [Contour(time: 5, color: "aabbcc")],
            polygons: true
        )
        let res = try await RoutingAPI.isochrone(isochroneRequest: req)
        XCTAssertEqual(res.id, req.id)
        XCTAssertEqual(res.features.count, 1)
    }

    func testMapMatch() async throws {
        let req = MapMatchRequest(
            id: "map_match",
            encodedPolyline: "_grbgAh~{nhF?lBAzBFvBHxBEtBKdB?fB@dBZdBb@hBh@jBb@x@\\|@x@pB\\x@v@hBl@nBPbCXtBn@|@z@ZbAEbAa@~@q@z@QhA]pAUpAVhAPlAWtASpAAdA[dASdAQhAIlARjANnAZhAf@n@`A?lB^nCRbA\\xB`@vBf@tBTbCFbARzBZvBThBRnBNrBP`CHbCF`CNdCb@vBX`ARlAJfADhA@dAFdAP`AR`Ah@hBd@bBl@rBV|B?vB]tBCvBBhAF`CFnBXtAVxAVpAVtAb@|AZ`Bd@~BJfA@fAHdADhADhABjAGzAInAAjAB|BNbCR|BTjBZtB`@lBh@lB\\|Bl@rBXtBN`Al@g@t@?nAA~AKvACvAAlAMdAU`Ac@hAShAI`AJ`AIdAi@bAu@|@k@p@]p@a@bAc@z@g@~@Ot@Bz@f@X`BFtBXdCLbAf@zBh@fBb@xAb@nATjAKjAW`BI|AEpAHjAPdAAfAGdAFjAv@p@XlAVnA?~A?jAInAPtAVxAXnAf@tBDpBJpBXhBJfBDpAZ|Ax@pAz@h@~@lA|@bAnAd@hAj@tAR~AKxAc@xAShA]hAIdAAjA]~A[v@BhB?dBSv@Ct@CvAI~@Oz@Pv@dAz@lAj@~A^`B^|AXvAVpAXdBh@~Ap@fCh@hB\\zBN`Aj@xBFdA@jALbAPbAJdAHdAJbAHbAHfAJhALbA\\lBTvBAdC@bC@jCKjASbC?`CM`CDpB\\xAj@tB\\fA\\bAVfAJdAJbAXz@L|BO`AOdCDdA@~B\\z@l@v@l@v@l@r@j@t@b@x@b@r@z@jBVfCJdAJdANbCPfCF|BRhBS~BS`AYbAe@~BQdA",
            costing: .pedestrian,
            linearReferences: true
        )
        let res = try await RoutingAPI.mapMatch(mapMatchRequest: req)
        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.trip.status, 0)
        XCTAssertEqual(res.trip.units, .kilometers)
        XCTAssertEqual(res.trip.legs.count, 1)
    }

    func testTraceAttributes() async throws {
        let req = TraceAttributesRequest(
            id: "trace",
            encodedPolyline: "kydw~@zm|g`DE`i@`JhDrAjEzM|FzWfL^sYH_EToCl@gAnE?rOBxKHE~B",
            costing: .pedestrian, shapeMatch: .mapSnap
        )
        let res = try await RoutingAPI.traceAttributes(traceAttributesRequest: req)
        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.units, .kilometers)
        XCTAssert(res.admins?.count ?? 0 >= 1)
        XCTAssert(res.edges?.count ?? 0 > 1)
        XCTAssert(res.matchedPoints?.count ?? 0 > 1)
        XCTAssert(res.shape?.count ?? 0 > 1)
    }
}
