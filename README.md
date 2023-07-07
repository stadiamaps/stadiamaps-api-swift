# Stadia Maps Swift SDK

This SDK helps you access the full range of geospatial APIs from Stadia Maps using Swift. Using Xcode, you'll get
all the goodies like autocomplete, type definitions, and documentation as you type.

All API methods leverage the async features introduced in Swift 5.5, which make it easier than ever to write correct
asynchronous code. You can find examples of how to call all of our API methods in the
[integration tests](tests/).

## Installation with Swift Package Mangaer

The Xcode UI changes frequently, but you can usually add packages to your project using an option in the File menu.
Then, you'll need to paste in the repository URL to search: https://github.com/stadiamaps/stadiamaps-api-swift.
See https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app for the latest detailed
instructions from Apple.

<a id="documentation-for-authorization"></a>
## Configuration

### Authorization

You will need an API key to use the Swift SDK. Learn how to get one for free: https://docs.stadiamaps.com/authentication/#generating-and-revoking-api-keys

You can configure your API key like so:

```swift
StadiaMapsAPI.customHeaders = ["Authorization": "Stadia-Auth YOUR-API-KEY"]
```

### EU endpoints

If you want to use our EU endpoints to keep traffic within the EU, you can set the `basePath` property.

```swift
StadiaMapsAPI.basePath = "https://api-eu.stadiamaps.com"
```

## Endpoint docs

All URIs are relative to *https://api.stadiamaps.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*GeocodingAPI* | [**autocomplete**](docs/GeocodingAPI.md#autocomplete) | **GET** /geocoding/v1/autocomplete | Search and geocode quickly based on partial input.
*GeocodingAPI* | [**place**](docs/GeocodingAPI.md#place) | **GET** /geocoding/v1/place | Retrieve details of a place using its GID.
*GeocodingAPI* | [**reverse**](docs/GeocodingAPI.md#reverse) | **GET** /geocoding/v1/reverse | Find places and addresses near geographic coordinates (reverse geocoding).
*GeocodingAPI* | [**search**](docs/GeocodingAPI.md#search) | **GET** /geocoding/v1/search | Search for location and other info using a place name or address (forward geocoding).
*GeocodingAPI* | [**searchStructured**](docs/GeocodingAPI.md#searchstructured) | **GET** /geocoding/v1/search/structured | Find locations matching components (structured forward geocoding).
*GeospatialAPI* | [**elevation**](docs/GeospatialAPI.md#elevation) | **POST** /elevation/v1 | Get the elevation profile along a polyline or at a point.
*GeospatialAPI* | [**tzLookup**](docs/GeospatialAPI.md#tzlookup) | **GET** /tz/lookup/v1 | Get the current time zone information for any point on earth.
*RoutingAPI* | [**isochrone**](docs/RoutingAPI.md#isochrone) | **POST** /isochrone/v1 | Calculate areas of equal travel time from a location.
*RoutingAPI* | [**mapMatch**](docs/RoutingAPI.md#mapmatch) | **POST** /map_match/v1 | Match a recorded route to the road network.
*RoutingAPI* | [**nearestRoads**](docs/RoutingAPI.md#nearestroads) | **POST** /nearest_roads/v1 | Find the nearest roads to the set of input locations.
*RoutingAPI* | [**optimizedRoute**](docs/RoutingAPI.md#optimizedroute) | **POST** /optimized_route/v1 | Calculate an optimized route between a known start and end point.
*RoutingAPI* | [**route**](docs/RoutingAPI.md#route) | **POST** /route/v1 | Get turn by turn routing instructions between two or more locations.
*RoutingAPI* | [**timeDistanceMatrix**](docs/RoutingAPI.md#timedistancematrix) | **POST** /matrix/v1 | Calculate a time distance matrix for a grid of start and end points.
*RoutingAPI* | [**traceAttributes**](docs/RoutingAPI.md#traceattributes) | **POST** /trace_attributes/v1 | Trace the attributes of roads visited on a route.


## Documentation For Models

 - [Access](docs/Access.md)
 - [AdminRegion](docs/AdminRegion.md)
 - [Administrative](docs/Administrative.md)
 - [AutoCostingOptions](docs/AutoCostingOptions.md)
 - [AutoCostingOptionsAllOf](docs/AutoCostingOptionsAllOf.md)
 - [BaseCostingOptions](docs/BaseCostingOptions.md)
 - [BaseTraceRequest](docs/BaseTraceRequest.md)
 - [BicycleCostingOptions](docs/BicycleCostingOptions.md)
 - [BicycleCostingOptionsAllOf](docs/BicycleCostingOptionsAllOf.md)
 - [BikeNetwork](docs/BikeNetwork.md)
 - [Contour](docs/Contour.md)
 - [Coordinate](docs/Coordinate.md)
 - [CostingModel](docs/CostingModel.md)
 - [CostingOptions](docs/CostingOptions.md)
 - [DirectionsOptions](docs/DirectionsOptions.md)
 - [DistanceUnit](docs/DistanceUnit.md)
 - [EdgeSign](docs/EdgeSign.md)
 - [EdgeUse](docs/EdgeUse.md)
 - [EndNode](docs/EndNode.md)
 - [GeoAttributes](docs/GeoAttributes.md)
 - [GeoJSONGeometry](docs/GeoJSONGeometry.md)
 - [GeoJSONGeometryBase](docs/GeoJSONGeometryBase.md)
 - [GeoJSONLineString](docs/GeoJSONLineString.md)
 - [GeoJSONLineStringAllOf](docs/GeoJSONLineStringAllOf.md)
 - [GeoJSONPoint](docs/GeoJSONPoint.md)
 - [GeoJSONPointAllOf](docs/GeoJSONPointAllOf.md)
 - [GeoJSONPolygon](docs/GeoJSONPolygon.md)
 - [GeoJSONPolygonAllOf](docs/GeoJSONPolygonAllOf.md)
 - [GeocodingObject](docs/GeocodingObject.md)
 - [HeightRequest](docs/HeightRequest.md)
 - [HeightResponse](docs/HeightResponse.md)
 - [HighwayClassification](docs/HighwayClassification.md)
 - [IntersectingEdge](docs/IntersectingEdge.md)
 - [IsochroneCostingModel](docs/IsochroneCostingModel.md)
 - [IsochroneFeature](docs/IsochroneFeature.md)
 - [IsochroneProperties](docs/IsochroneProperties.md)
 - [IsochroneRequest](docs/IsochroneRequest.md)
 - [IsochroneResponse](docs/IsochroneResponse.md)
 - [LocateDetailedEdge](docs/LocateDetailedEdge.md)
 - [LocateEdge](docs/LocateEdge.md)
 - [LocateEdgeInfo](docs/LocateEdgeInfo.md)
 - [LocateNode](docs/LocateNode.md)
 - [LocateNodeAllOf](docs/LocateNodeAllOf.md)
 - [LocateObject](docs/LocateObject.md)
 - [ManeuverSign](docs/ManeuverSign.md)
 - [ManeuverSignElement](docs/ManeuverSignElement.md)
 - [MapMatchCostingModel](docs/MapMatchCostingModel.md)
 - [MapMatchRequest](docs/MapMatchRequest.md)
 - [MapMatchRequestAllOf](docs/MapMatchRequestAllOf.md)
 - [MapMatchRouteResponse](docs/MapMatchRouteResponse.md)
 - [MapMatchRouteResponseAllOf](docs/MapMatchRouteResponseAllOf.md)
 - [MapMatchTraceOptions](docs/MapMatchTraceOptions.md)
 - [MapMatchWaypoint](docs/MapMatchWaypoint.md)
 - [MapMatchWaypointAllOf](docs/MapMatchWaypointAllOf.md)
 - [MatchedPoint](docs/MatchedPoint.md)
 - [MatrixCostingModel](docs/MatrixCostingModel.md)
 - [MatrixDistance](docs/MatrixDistance.md)
 - [MatrixRequest](docs/MatrixRequest.md)
 - [MatrixResponse](docs/MatrixResponse.md)
 - [MotorScooterCostingOptions](docs/MotorScooterCostingOptions.md)
 - [MotorScooterCostingOptionsAllOf](docs/MotorScooterCostingOptionsAllOf.md)
 - [MotorcycleCostingOptions](docs/MotorcycleCostingOptions.md)
 - [MotorcycleCostingOptionsAllOf](docs/MotorcycleCostingOptionsAllOf.md)
 - [NearestRoadsRequest](docs/NearestRoadsRequest.md)
 - [NodeId](docs/NodeId.md)
 - [NodeType](docs/NodeType.md)
 - [OptimizedRouteRequest](docs/OptimizedRouteRequest.md)
 - [PedestrianCostingOptions](docs/PedestrianCostingOptions.md)
 - [PeliasGeoJSONFeature](docs/PeliasGeoJSONFeature.md)
 - [PeliasGeoJSONProperties](docs/PeliasGeoJSONProperties.md)
 - [PeliasGeoJSONPropertiesAddendum](docs/PeliasGeoJSONPropertiesAddendum.md)
 - [PeliasGeoJSONPropertiesAddendumOsm](docs/PeliasGeoJSONPropertiesAddendumOsm.md)
 - [PeliasLayer](docs/PeliasLayer.md)
 - [PeliasResponse](docs/PeliasResponse.md)
 - [PeliasResponseGeocoding](docs/PeliasResponseGeocoding.md)
 - [PeliasSource](docs/PeliasSource.md)
 - [Restrictions](docs/Restrictions.md)
 - [RoadClass](docs/RoadClass.md)
 - [RouteLeg](docs/RouteLeg.md)
 - [RouteManeuver](docs/RouteManeuver.md)
 - [RouteRequest](docs/RouteRequest.md)
 - [RouteResponse](docs/RouteResponse.md)
 - [RouteResponseTrip](docs/RouteResponseTrip.md)
 - [RouteSummary](docs/RouteSummary.md)
 - [RoutingResponseWaypoint](docs/RoutingResponseWaypoint.md)
 - [RoutingResponseWaypointAllOf](docs/RoutingResponseWaypointAllOf.md)
 - [RoutingWaypoint](docs/RoutingWaypoint.md)
 - [RoutingWaypointAllOf](docs/RoutingWaypointAllOf.md)
 - [RoutingWaypointAllOfSearchFilter](docs/RoutingWaypointAllOfSearchFilter.md)
 - [SimpleRoutingWaypoint](docs/SimpleRoutingWaypoint.md)
 - [SimpleRoutingWaypointAllOf](docs/SimpleRoutingWaypointAllOf.md)
 - [Speeds](docs/Speeds.md)
 - [TraceAttributeFilterOptions](docs/TraceAttributeFilterOptions.md)
 - [TraceAttributeKey](docs/TraceAttributeKey.md)
 - [TraceAttributesBaseResponse](docs/TraceAttributesBaseResponse.md)
 - [TraceAttributesRequest](docs/TraceAttributesRequest.md)
 - [TraceAttributesRequestAllOf](docs/TraceAttributesRequestAllOf.md)
 - [TraceAttributesRequestAllOfFilters](docs/TraceAttributesRequestAllOfFilters.md)
 - [TraceAttributesResponse](docs/TraceAttributesResponse.md)
 - [TraceAttributesResponseAllOf](docs/TraceAttributesResponseAllOf.md)
 - [TraceEdge](docs/TraceEdge.md)
 - [TravelMode](docs/TravelMode.md)
 - [Traversability](docs/Traversability.md)
 - [TruckCostingOptions](docs/TruckCostingOptions.md)
 - [TruckCostingOptionsAllOf](docs/TruckCostingOptionsAllOf.md)
 - [TzResponse](docs/TzResponse.md)
 - [ValhallaLanguages](docs/ValhallaLanguages.md)
 - [ValhallaLongUnits](docs/ValhallaLongUnits.md)
 - [Warning](docs/Warning.md)


## Author

support@stadiamaps.com

