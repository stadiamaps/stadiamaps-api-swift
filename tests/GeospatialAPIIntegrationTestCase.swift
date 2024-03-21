import StadiaMaps
import XCTest

final class GeospatialAPIIntegrationTestCase: IntegrationXCTestCase {
    let seoul = Coordinate(lat: 37.56, lon: 126.99)
    let polyline = "_grbgAh~{nhF?lBAzBFvBHxBEtBKdB?fB@dBZdBb@hBh@jBb@x@\\|@x@pB\\x@v@hBl@nBPbCXtBn@|@z@ZbAEbAa@~@q@z@QhA]pAUpAVhAPlAWtASpAAdA[dASdAQhAIlARjANnAZhAf@n@`A?lB^nCRbA\\xB`@vBf@tBTbCFbARzBZvBThBRnBNrBP`CHbCF`CNdCb@vBX`ARlAJfADhA@dAFdAP`AR`Ah@hBd@bBl@rBV|B?vB]tBCvBBhAF`CFnBXtAVxAVpAVtAb@|AZ`Bd@~BJfA@fAHdADhADhABjAGzAInAAjAB|BNbCR|BTjBZtB`@lBh@lB\\|Bl@rBXtBN`Al@g@t@?nAA~AKvACvAAlAMdAU`Ac@hAShAI`AJ`AIdAi@bAu@|@k@p@]p@a@bAc@z@g@~@Ot@Bz@f@X`BFtBXdCLbAf@zBh@fBb@xAb@nATjAKjAW`BI|AEpAHjAPdAAfAGdAFjAv@p@XlAVnA?~A?jAInAPtAVxAXnAf@tBDpBJpBXhBJfBDpAZ|Ax@pAz@h@~@lA|@bAnAd@hAj@tAR~AKxAc@xAShA]hAIdAAjA]~A[v@BhB?dBSv@Ct@CvAI~@Oz@Pv@dAz@lAj@~A^`B^|AXvAVpAXdBh@~Ap@fCh@hB\\zBN`Aj@xBFdA@jALbAPbAJdAHdAJbAHbAHfAJhALbA\\lBTvBAdC@bC@jCKjASbC?`CM`CDpB\\xAj@tB\\fA\\bAVfAJdAJbAXz@L|BO`AOdCDdA@~B\\z@l@v@l@v@l@r@j@t@b@x@b@r@z@jBVfCJdAJdANbCPfCF|BRhBS~BS`AYbAe@~BQdA"

    func testTZ() async throws {
        let res = try await GeospatialAPI.tzLookup(lat: seoul.lat, lng: seoul.lon)

        XCTAssertEqual(res.tzId, "Asia/Seoul")
    }

    func testElevation() async throws {
        let req = HeightRequest(id: "height", shape: [seoul])
        let res = try await GeospatialAPI.elevation(heightRequest: req)

        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.height?.count, 1)
        XCTAssertTrue(res.height?.first ?? -1 > 0)
        XCTAssertEqual(req.shape, res.shape)
    }

    func testElevationWithResampling() async throws {
        let req = HeightRequest(id: "height", encodedPolyline: polyline, shapeFormat: .polyline6, resampleDistance: 25)
        let res = try await GeospatialAPI.elevation(heightRequest: req)

        XCTAssertEqual(req.id, res.id)
        // NOTE: Original line is 253 points; the resampled line will be much smaller
        XCTAssertLessThan(res.height?.count ?? 0, 100)
        XCTAssertTrue(res.height?.first ?? -1 > 0)
    }

    func testElevationWithRanges() async throws {
        let req = HeightRequest(id: "height", shape: [seoul], range: true)
        let res = try await GeospatialAPI.elevation(heightRequest: req)

        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.rangeHeight?.count, 1)
        XCTAssertEqual(res.rangeHeight?.first?.first, 0)
        XCTAssertTrue(res.rangeHeight?.first?[1] ?? 0 > 0)
        XCTAssertEqual(req.shape, res.shape)
    }
}
