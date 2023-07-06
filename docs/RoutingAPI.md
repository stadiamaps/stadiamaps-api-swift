# RoutingAPI

All URIs are relative to *https://api.stadiamaps.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**isochrone**](RoutingAPI.md#isochrone) | **POST** /isochrone/v1 | Calculate areas of equal travel time from a location.
[**mapMatch**](RoutingAPI.md#mapmatch) | **POST** /map_match/v1 | Match a recorded route to the road network.
[**nearestRoads**](RoutingAPI.md#nearestroads) | **POST** /nearest_roads/v1 | Find the nearest roads to the set of input locations.
[**optimizedRoute**](RoutingAPI.md#optimizedroute) | **POST** /optimized_route/v1 | Calculate an optimized route between a known start and end point.
[**route**](RoutingAPI.md#route) | **POST** /route/v1 | Get turn by turn routing instructions between two or more locations.
[**timeDistanceMatrix**](RoutingAPI.md#timedistancematrix) | **POST** /matrix/v1 | Calculate a time distance matrix for a grid of start and end points.
[**traceAttributes**](RoutingAPI.md#traceattributes) | **POST** /trace_attributes/v1 | Trace the attributes of roads visited on a route.


# **isochrone**
```swift
    open class func isochrone(isochroneRequest: IsochroneRequest? = nil, completion: @escaping (_ data: IsochroneResponse?, _ error: Error?) -> Void)
```

Calculate areas of equal travel time from a location.

The isochrone API lets you compute or visualize areas of roughly equal travel time based on the routing graph. The resulting polygon can be rendered on a map and shaded much like elevation contours and used for exploring urban mobility.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let isochroneRequest = isochroneRequest(id: "id_example", locations: [coordinate(lat: 123, lon: 123)], costing: isochroneCostingModel(), costingOptions: costingOptions(auto: autoCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false), bus: nil, taxi: nil, truck: truckCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, length: 123, weight: 123, axleLoad: 123, hazmat: false), bicycle: bicycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, bicycleType: "bicycleType_example", cyclingSpeed: 123, useRoads: 123, useHills: 123, avoidBadSurfaces: 123, bssReturnCost: 123, bssReturnPenalty: 123), motorScooter: motorScooterCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, usePrimary: 123, useHills: 123), motorcycle: motorcycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, useTrails: 123), pedestrian: pedestrianCostingOptions(walkingSpeed: 123, walkwayFactor: 123, sidewalkFactor: 123, alleyFactor: 123, drivewayFactor: 123, stepPenalty: 123, useFerry: 123, useLivingStreets: 123, useTracks: 123, useHills: 123, useLit: 123, servicePenalty: 123, serviceFactor: 123, maxHikingDifficulty: 123, bssRentCost: 123, bssRentPenalty: 123)), contours: [contour(time: 123, distance: 123, color: "color_example")], polygons: false, denoise: 123, generalize: 123, showLocations: false) // IsochroneRequest |  (optional)

// Calculate areas of equal travel time from a location.
RoutingAPI.isochrone(isochroneRequest: isochroneRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isochroneRequest** | [**IsochroneRequest**](IsochroneRequest.md) |  | [optional] 

### Return type

[**IsochroneResponse**](IsochroneResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapMatch**
```swift
    open class func mapMatch(mapMatchRequest: MapMatchRequest? = nil, completion: @escaping (_ data: MapMatchRouteResponse?, _ error: Error?) -> Void)
```

Match a recorded route to the road network.

The map matching API transforms a recorded route into navigation instructions like you would get from the `route` endpoint. The input can be in the form of either an encoded polyline, or (optionally) timestamped coordinates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let mapMatchRequest = mapMatchRequest(id: "id_example", shape: [mapMatchWaypoint(lat: 123, lon: 123, type: "type_example", time: 123)], encodedPolyline: "encodedPolyline_example", costing: mapMatchCostingModel(), costingOptions: costingOptions(auto: autoCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false), bus: nil, taxi: nil, truck: truckCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, length: 123, weight: 123, axleLoad: 123, hazmat: false), bicycle: bicycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, bicycleType: "bicycleType_example", cyclingSpeed: 123, useRoads: 123, useHills: 123, avoidBadSurfaces: 123, bssReturnCost: 123, bssReturnPenalty: 123), motorScooter: motorScooterCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, usePrimary: 123, useHills: 123), motorcycle: motorcycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, useTrails: 123), pedestrian: pedestrianCostingOptions(walkingSpeed: 123, walkwayFactor: 123, sidewalkFactor: 123, alleyFactor: 123, drivewayFactor: 123, stepPenalty: 123, useFerry: 123, useLivingStreets: 123, useTracks: 123, useHills: 123, useLit: 123, servicePenalty: 123, serviceFactor: 123, maxHikingDifficulty: 123, bssRentCost: 123, bssRentPenalty: 123)), shapeMatch: "shapeMatch_example", directionsOptions: directionsOptions(units: distanceUnit(), language: valhallaLanguages(), directionsType: "directionsType_example"), beginTime: 123, durations: 123, useTimestamps: false, traceOptions: mapMatchTraceOptions(searchRadius: 123, gpsAccuracy: 123, breakageDistance: 123, interpolationDistance: 123, turnPenaltyFactor: 123), linearReferences: false) // MapMatchRequest |  (optional)

// Match a recorded route to the road network.
RoutingAPI.mapMatch(mapMatchRequest: mapMatchRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapMatchRequest** | [**MapMatchRequest**](MapMatchRequest.md) |  | [optional] 

### Return type

[**MapMatchRouteResponse**](MapMatchRouteResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nearestRoads**
```swift
    open class func nearestRoads(nearestRoadsRequest: NearestRoadsRequest? = nil, completion: @escaping (_ data: [LocateObject]?, _ error: Error?) -> Void)
```

Find the nearest roads to the set of input locations.

The nearest roads API allows you query for detailed information about streets and intersections near the input locations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let nearestRoadsRequest = nearestRoadsRequest(locations: [coordinate(lat: 123, lon: 123)], costing: costingModel(), costingOptions: costingOptions(auto: autoCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false), bus: nil, taxi: nil, truck: truckCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, length: 123, weight: 123, axleLoad: 123, hazmat: false), bicycle: bicycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, bicycleType: "bicycleType_example", cyclingSpeed: 123, useRoads: 123, useHills: 123, avoidBadSurfaces: 123, bssReturnCost: 123, bssReturnPenalty: 123), motorScooter: motorScooterCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, usePrimary: 123, useHills: 123), motorcycle: motorcycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, useTrails: 123), pedestrian: pedestrianCostingOptions(walkingSpeed: 123, walkwayFactor: 123, sidewalkFactor: 123, alleyFactor: 123, drivewayFactor: 123, stepPenalty: 123, useFerry: 123, useLivingStreets: 123, useTracks: 123, useHills: 123, useLit: 123, servicePenalty: 123, serviceFactor: 123, maxHikingDifficulty: 123, bssRentCost: 123, bssRentPenalty: 123)), verbose: false, directionsOptions: directionsOptions(units: distanceUnit(), language: valhallaLanguages(), directionsType: "directionsType_example")) // NearestRoadsRequest |  (optional)

// Find the nearest roads to the set of input locations.
RoutingAPI.nearestRoads(nearestRoadsRequest: nearestRoadsRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nearestRoadsRequest** | [**NearestRoadsRequest**](NearestRoadsRequest.md) |  | [optional] 

### Return type

[**[LocateObject]**](LocateObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **optimizedRoute**
```swift
    open class func optimizedRoute(optimizedRouteRequest: OptimizedRouteRequest? = nil, completion: @escaping (_ data: RouteResponse?, _ error: Error?) -> Void)
```

Calculate an optimized route between a known start and end point.

The optimized route API is a mix of the matrix and normal route API. For an optimized route, the start and end point are fixed, but the intermediate points will be re-ordered to form an optimal route visiting all nodes once. Note that all matrix endpoints have a limit of 1000 elements, regardless of the costing/mode of travel. A matrix request with 3 inputs and 5 outputs has 3 x 5 = 15 elements. This means you could send a 100 x 10 or 20 x 50 matrix request (each having 1000 elements), but not 40 x 30 as it has 1200 elements.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let optimizedRouteRequest = optimizedRouteRequest(id: "id_example", locations: [coordinate(lat: 123, lon: 123)], costing: matrixCostingModel(), costingOptions: costingOptions(auto: autoCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false), bus: nil, taxi: nil, truck: truckCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, length: 123, weight: 123, axleLoad: 123, hazmat: false), bicycle: bicycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, bicycleType: "bicycleType_example", cyclingSpeed: 123, useRoads: 123, useHills: 123, avoidBadSurfaces: 123, bssReturnCost: 123, bssReturnPenalty: 123), motorScooter: motorScooterCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, usePrimary: 123, useHills: 123), motorcycle: motorcycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, useTrails: 123), pedestrian: pedestrianCostingOptions(walkingSpeed: 123, walkwayFactor: 123, sidewalkFactor: 123, alleyFactor: 123, drivewayFactor: 123, stepPenalty: 123, useFerry: 123, useLivingStreets: 123, useTracks: 123, useHills: 123, useLit: 123, servicePenalty: 123, serviceFactor: 123, maxHikingDifficulty: 123, bssRentCost: 123, bssRentPenalty: 123)), directionsOptions: directionsOptions(units: distanceUnit(), language: valhallaLanguages(), directionsType: "directionsType_example")) // OptimizedRouteRequest |  (optional)

// Calculate an optimized route between a known start and end point.
RoutingAPI.optimizedRoute(optimizedRouteRequest: optimizedRouteRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optimizedRouteRequest** | [**OptimizedRouteRequest**](OptimizedRouteRequest.md) |  | [optional] 

### Return type

[**RouteResponse**](RouteResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **route**
```swift
    open class func route(routeRequest: RouteRequest? = nil, completion: @escaping (_ data: RouteResponse?, _ error: Error?) -> Void)
```

Get turn by turn routing instructions between two or more locations.

The route (turn-by-turn) API computes routes between two or more locations. It supports a variety of tunable costing methods, and supports routing through intermediate waypoints and discontinuous multi-leg routes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let routeRequest = routeRequest(id: "id_example", locations: [routingWaypoint(lat: 123, lon: 123, type: "type_example", heading: 123, headingTolerance: 123, minimumReachability: 123, radius: 123, rankCandidates: false, preferredSide: "preferredSide_example", nodeSnapTolerance: 123, streetSideTolerance: 123, streetSideMaxDistance: 123, searchFilter: routingWaypoint_allOf_search_filter(excludeTunnel: false, excludeBridge: false, excludeRamp: false, excludeClosures: false, minRoadClass: roadClass(), maxRoadClass: nil))], costing: costingModel(), costingOptions: costingOptions(auto: autoCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false), bus: nil, taxi: nil, truck: truckCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, length: 123, weight: 123, axleLoad: 123, hazmat: false), bicycle: bicycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, bicycleType: "bicycleType_example", cyclingSpeed: 123, useRoads: 123, useHills: 123, avoidBadSurfaces: 123, bssReturnCost: 123, bssReturnPenalty: 123), motorScooter: motorScooterCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, usePrimary: 123, useHills: 123), motorcycle: motorcycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, useTrails: 123), pedestrian: pedestrianCostingOptions(walkingSpeed: 123, walkwayFactor: 123, sidewalkFactor: 123, alleyFactor: 123, drivewayFactor: 123, stepPenalty: 123, useFerry: 123, useLivingStreets: 123, useTracks: 123, useHills: 123, useLit: 123, servicePenalty: 123, serviceFactor: 123, maxHikingDifficulty: 123, bssRentCost: 123, bssRentPenalty: 123)), avoidLocations: [nil], avoidPolygons: [[[123]]], directionsOptions: directionsOptions(units: distanceUnit(), language: valhallaLanguages(), directionsType: "directionsType_example")) // RouteRequest |  (optional)

// Get turn by turn routing instructions between two or more locations.
RoutingAPI.route(routeRequest: routeRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeRequest** | [**RouteRequest**](RouteRequest.md) |  | [optional] 

### Return type

[**RouteResponse**](RouteResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeDistanceMatrix**
```swift
    open class func timeDistanceMatrix(matrixRequest: MatrixRequest? = nil, completion: @escaping (_ data: MatrixResponse?, _ error: Error?) -> Void)
```

Calculate a time distance matrix for a grid of start and end points.

The time distance matrix API lets you compare travel times between a set of possible start and end points. Note that all matrix endpoints have a limit of 1000 elements, regardless of the costing/mode of travel. A matrix request with 3 inputs and 5 outputs has 3 x 5 = 15 elements. This means you could send a 100 x 10 or 20 x 50 matrix request (each having 1000 elements), but not 40 x 30 as it has 1200 elements.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let matrixRequest = matrixRequest(id: "id_example", sources: [coordinate(lat: 123, lon: 123)], targets: [nil], costing: matrixCostingModel(), costingOptions: costingOptions(auto: autoCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false), bus: nil, taxi: nil, truck: truckCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, length: 123, weight: 123, axleLoad: 123, hazmat: false), bicycle: bicycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, bicycleType: "bicycleType_example", cyclingSpeed: 123, useRoads: 123, useHills: 123, avoidBadSurfaces: 123, bssReturnCost: 123, bssReturnPenalty: 123), motorScooter: motorScooterCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, usePrimary: 123, useHills: 123), motorcycle: motorcycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, useTrails: 123), pedestrian: pedestrianCostingOptions(walkingSpeed: 123, walkwayFactor: 123, sidewalkFactor: 123, alleyFactor: 123, drivewayFactor: 123, stepPenalty: 123, useFerry: 123, useLivingStreets: 123, useTracks: 123, useHills: 123, useLit: 123, servicePenalty: 123, serviceFactor: 123, maxHikingDifficulty: 123, bssRentCost: 123, bssRentPenalty: 123)), matrixLocations: 123, directionsOptions: directionsOptions(units: distanceUnit(), language: valhallaLanguages(), directionsType: "directionsType_example")) // MatrixRequest |  (optional)

// Calculate a time distance matrix for a grid of start and end points.
RoutingAPI.timeDistanceMatrix(matrixRequest: matrixRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matrixRequest** | [**MatrixRequest**](MatrixRequest.md) |  | [optional] 

### Return type

[**MatrixResponse**](MatrixResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **traceAttributes**
```swift
    open class func traceAttributes(traceAttributesRequest: TraceAttributesRequest? = nil, completion: @escaping (_ data: TraceAttributesResponse?, _ error: Error?) -> Void)
```

Trace the attributes of roads visited on a route.

The trace attributes endpoint retrieves detailed information along a route, returning details for each section along the path, as well as any intersections encountered. In addition to tracing a recording route, this is great for providing just-in-time info to navigation applications, enabling them to conserve resources by omitting info like speed limits upfront that may be irrelevant if the user goes off-route.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let traceAttributesRequest = traceAttributesRequest(id: "id_example", shape: [mapMatchWaypoint(lat: 123, lon: 123, type: "type_example", time: 123)], encodedPolyline: "encodedPolyline_example", costing: mapMatchCostingModel(), costingOptions: costingOptions(auto: autoCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false), bus: nil, taxi: nil, truck: truckCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, length: 123, weight: 123, axleLoad: 123, hazmat: false), bicycle: bicycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, bicycleType: "bicycleType_example", cyclingSpeed: 123, useRoads: 123, useHills: 123, avoidBadSurfaces: 123, bssReturnCost: 123, bssReturnPenalty: 123), motorScooter: motorScooterCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, usePrimary: 123, useHills: 123), motorcycle: motorcycleCostingOptions(maneuverPenalty: 123, gateCost: 123, gatePenalty: 123, countryCrossingCost: 123, countryCrossingPenalty: 123, servicePenalty: 123, serviceFactor: 123, useLivingStreets: 123, useFerry: 123, height: 123, width: 123, tollBoothCost: 123, tollBoothPenalty: 123, ferryCost: 123, useHighways: 123, useTolls: 123, useTracks: 123, topSpeed: 123, shortest: false, ignoreClosures: false, includeHov2: false, includeHov3: false, includeHot: false, useTrails: 123), pedestrian: pedestrianCostingOptions(walkingSpeed: 123, walkwayFactor: 123, sidewalkFactor: 123, alleyFactor: 123, drivewayFactor: 123, stepPenalty: 123, useFerry: 123, useLivingStreets: 123, useTracks: 123, useHills: 123, useLit: 123, servicePenalty: 123, serviceFactor: 123, maxHikingDifficulty: 123, bssRentCost: 123, bssRentPenalty: 123)), shapeMatch: "shapeMatch_example", directionsOptions: directionsOptions(units: distanceUnit(), language: valhallaLanguages(), directionsType: "directionsType_example"), filters: traceAttributesRequest_allOf_filters(attributes: [traceAttributeKey()], action: "action_example")) // TraceAttributesRequest |  (optional)

// Trace the attributes of roads visited on a route.
RoutingAPI.traceAttributes(traceAttributesRequest: traceAttributesRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **traceAttributesRequest** | [**TraceAttributesRequest**](TraceAttributesRequest.md) |  | [optional] 

### Return type

[**TraceAttributesResponse**](TraceAttributesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

