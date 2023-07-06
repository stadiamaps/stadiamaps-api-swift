//
// RoutingAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

open class RoutingAPI {
    /**
     Calculate areas of equal travel time from a location.

     - parameter isochroneRequest: (body)  (optional)
     - returns: IsochroneResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func isochrone(isochroneRequest: IsochroneRequest? = nil) async throws -> IsochroneResponse {
        try await isochroneWithRequestBuilder(isochroneRequest: isochroneRequest).execute().body
    }

    /**
     Calculate areas of equal travel time from a location.
     - POST /isochrone/v1
     - The isochrone API lets you compute or visualize areas of roughly equal travel time based on the routing graph. The resulting polygon can be rendered on a map and shaded much like elevation contours and used for exploring urban mobility.
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: ApiKeyAuth
     - parameter isochroneRequest: (body)  (optional)
     - returns: RequestBuilder<IsochroneResponse>
     */
    open class func isochroneWithRequestBuilder(isochroneRequest: IsochroneRequest? = nil) -> RequestBuilder<IsochroneResponse> {
        let localVariablePath = "/isochrone/v1"
        let localVariableURLString = StadiaMapsAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: isochroneRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [:]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<IsochroneResponse>.Type = StadiaMapsAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Match a recorded route to the road network.

     - parameter mapMatchRequest: (body)  (optional)
     - returns: MapMatchRouteResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func mapMatch(mapMatchRequest: MapMatchRequest? = nil) async throws -> MapMatchRouteResponse {
        try await mapMatchWithRequestBuilder(mapMatchRequest: mapMatchRequest).execute().body
    }

    /**
     Match a recorded route to the road network.
     - POST /map_match/v1
     - The map matching API transforms a recorded route into navigation instructions like you would get from the `route` endpoint. The input can be in the form of either an encoded polyline, or (optionally) timestamped coordinates.
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: ApiKeyAuth
     - parameter mapMatchRequest: (body)  (optional)
     - returns: RequestBuilder<MapMatchRouteResponse>
     */
    open class func mapMatchWithRequestBuilder(mapMatchRequest: MapMatchRequest? = nil) -> RequestBuilder<MapMatchRouteResponse> {
        let localVariablePath = "/map_match/v1"
        let localVariableURLString = StadiaMapsAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mapMatchRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [:]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MapMatchRouteResponse>.Type = StadiaMapsAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Find the nearest roads to the set of input locations.

     - parameter nearestRoadsRequest: (body)  (optional)
     - returns: [LocateObject]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func nearestRoads(nearestRoadsRequest: NearestRoadsRequest? = nil) async throws -> [LocateObject] {
        try await nearestRoadsWithRequestBuilder(nearestRoadsRequest: nearestRoadsRequest).execute().body
    }

    /**
     Find the nearest roads to the set of input locations.
     - POST /nearest_roads/v1
     - The nearest roads API allows you query for detailed information about streets and intersections near the input locations.
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: ApiKeyAuth
     - parameter nearestRoadsRequest: (body)  (optional)
     - returns: RequestBuilder<[LocateObject]>
     */
    open class func nearestRoadsWithRequestBuilder(nearestRoadsRequest: NearestRoadsRequest? = nil) -> RequestBuilder<[LocateObject]> {
        let localVariablePath = "/nearest_roads/v1"
        let localVariableURLString = StadiaMapsAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: nearestRoadsRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [:]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[LocateObject]>.Type = StadiaMapsAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Calculate an optimized route between a known start and end point.

     - parameter optimizedRouteRequest: (body)  (optional)
     - returns: RouteResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func optimizedRoute(optimizedRouteRequest: OptimizedRouteRequest? = nil) async throws -> RouteResponse {
        try await optimizedRouteWithRequestBuilder(optimizedRouteRequest: optimizedRouteRequest).execute().body
    }

    /**
     Calculate an optimized route between a known start and end point.
     - POST /optimized_route/v1
     - The optimized route API is a mix of the matrix and normal route API. For an optimized route, the start and end point are fixed, but the intermediate points will be re-ordered to form an optimal route visiting all nodes once. Note that all matrix endpoints have a limit of 1000 elements, regardless of the costing/mode of travel. A matrix request with 3 inputs and 5 outputs has 3 x 5 = 15 elements. This means you could send a 100 x 10 or 20 x 50 matrix request (each having 1000 elements), but not 40 x 30 as it has 1200 elements.
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: ApiKeyAuth
     - parameter optimizedRouteRequest: (body)  (optional)
     - returns: RequestBuilder<RouteResponse>
     */
    open class func optimizedRouteWithRequestBuilder(optimizedRouteRequest: OptimizedRouteRequest? = nil) -> RequestBuilder<RouteResponse> {
        let localVariablePath = "/optimized_route/v1"
        let localVariableURLString = StadiaMapsAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: optimizedRouteRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [:]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RouteResponse>.Type = StadiaMapsAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get turn by turn routing instructions between two or more locations.

     - parameter routeRequest: (body)  (optional)
     - returns: RouteResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func route(routeRequest: RouteRequest? = nil) async throws -> RouteResponse {
        try await routeWithRequestBuilder(routeRequest: routeRequest).execute().body
    }

    /**
     Get turn by turn routing instructions between two or more locations.
     - POST /route/v1
     - The route (turn-by-turn) API computes routes between two or more locations. It supports a variety of tunable costing methods, and supports routing through intermediate waypoints and discontinuous multi-leg routes.
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: ApiKeyAuth
     - parameter routeRequest: (body)  (optional)
     - returns: RequestBuilder<RouteResponse>
     */
    open class func routeWithRequestBuilder(routeRequest: RouteRequest? = nil) -> RequestBuilder<RouteResponse> {
        let localVariablePath = "/route/v1"
        let localVariableURLString = StadiaMapsAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: routeRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [:]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RouteResponse>.Type = StadiaMapsAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Calculate a time distance matrix for a grid of start and end points.

     - parameter matrixRequest: (body)  (optional)
     - returns: MatrixResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func timeDistanceMatrix(matrixRequest: MatrixRequest? = nil) async throws -> MatrixResponse {
        try await timeDistanceMatrixWithRequestBuilder(matrixRequest: matrixRequest).execute().body
    }

    /**
     Calculate a time distance matrix for a grid of start and end points.
     - POST /matrix/v1
     - The time distance matrix API lets you compare travel times between a set of possible start and end points. Note that all matrix endpoints have a limit of 1000 elements, regardless of the costing/mode of travel. A matrix request with 3 inputs and 5 outputs has 3 x 5 = 15 elements. This means you could send a 100 x 10 or 20 x 50 matrix request (each having 1000 elements), but not 40 x 30 as it has 1200 elements.
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: ApiKeyAuth
     - parameter matrixRequest: (body)  (optional)
     - returns: RequestBuilder<MatrixResponse>
     */
    open class func timeDistanceMatrixWithRequestBuilder(matrixRequest: MatrixRequest? = nil) -> RequestBuilder<MatrixResponse> {
        let localVariablePath = "/matrix/v1"
        let localVariableURLString = StadiaMapsAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: matrixRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [:]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MatrixResponse>.Type = StadiaMapsAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Trace the attributes of roads visited on a route.

     - parameter traceAttributesRequest: (body)  (optional)
     - returns: TraceAttributesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func traceAttributes(traceAttributesRequest: TraceAttributesRequest? = nil) async throws -> TraceAttributesResponse {
        try await traceAttributesWithRequestBuilder(traceAttributesRequest: traceAttributesRequest).execute().body
    }

    /**
     Trace the attributes of roads visited on a route.
     - POST /trace_attributes/v1
     - The trace attributes endpoint retrieves detailed information along a route, returning details for each section along the path, as well as any intersections encountered. In addition to tracing a recording route, this is great for providing just-in-time info to navigation applications, enabling them to conserve resources by omitting info like speed limits upfront that may be irrelevant if the user goes off-route.
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: ApiKeyAuth
     - parameter traceAttributesRequest: (body)  (optional)
     - returns: RequestBuilder<TraceAttributesResponse>
     */
    open class func traceAttributesWithRequestBuilder(traceAttributesRequest: TraceAttributesRequest? = nil) -> RequestBuilder<TraceAttributesResponse> {
        let localVariablePath = "/trace_attributes/v1"
        let localVariableURLString = StadiaMapsAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: traceAttributesRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [:]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TraceAttributesResponse>.Type = StadiaMapsAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
