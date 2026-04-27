# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Version 8.1.0 - 2026-04-27

### Added

This release adds supports for new structured geocoding properties!

You are no longer limited to a single "address" field.
Street, house number, and unit are now available as separate structured geocoding fields,
giving you more control and skipping the parser guesswork.

## Version 8.0.0 - 2026-04-10

### Added

[Traffic-influenced routing](https://stadiamaps.com/products/routing-navigation/traffic-influenced-routing/)
is now available for cars, busses, taxis, and trucks!
Traffic-influenced routing profiles come in two variants:

- Adaptive traffic profiles use either current conditions or predictive data,
  automatically selecting the best one given your request parameters.
- Premium traffic profiles use both current conditions and predictive data
  to give you the best ETAs, isochrones, and routes.

We've also expanded the routing API with even more flexibility:

- Time-dependent routing: the new traffic profiles assume "departing now" by default.
  But you can also specify departure or arrival at a specific time.
  For time/distance matrix calculations, you can even specify this at the individual source/target level.
- Penalties (routing is allowed, but discouraged, so that these features can be avoided)
  - Private access roads
  - Alleys
  - (Rail) ferries
  - Elevator use
  - Use of residential, service, or other undesirable roads by heavy vehicles
- Hard exclusions
  - Cash-only tolls
  - Unpaved roads
- Time vs distance preference: you can specify a percentage weight between the two instead of the default (time-based) or purely shortest
- Truck axle restrictions

Finally, we've launched version 2 of our time zone API!
There is no significant difference in the functionality,
but we've rectified a long-standing point of confusion with how we communicated offsets from standard time.

### Changed

The most notable technically breaking change is that nearest roads requests now have their own costing model type.
If your Swift code explicitly names the type of the enum, you will get a compilation error
telling you to use the `NearestRoadsCostingModel` instead of `CostingModel`.
If you don't explicitly name the type and rather use the short form (e.g. `.auto`),
then your code will compile as-is.
No endpoint functionality has changed.

We have also removed some properties from routing endpoint models which had no effect.
For example, the Nearest Roads API does not return directions,
but it still accepted a directions type parameter.
Most existing code should continue to work as-is.

## Version 7.0.1 - 2025-06-12

### Fixed

- Add two missing OSRM maneuver types which were mistakenly omitted.

## Version 7.0.0 - 2025-06-11

### Added

- Support for the v2 `search` (forward geocoding) endpoint! The new API includes better structure, more details, and better address formatting.

```diff
- let res = try await GeocodingAPI.search(text: "Telliskivi 60a/3, Tallinn, Estonia")
+ let res = try await GeocodingAPI.searchV2(text: "Telliskivi 60a/3, Tallinn, Estonia")
```

For an overview of the structural changes we've made in the V2 API,
refer to the [migration guide](https://docs.stadiamaps.com/geocoding-search-autocomplete/v2-api-migration-guide/).

### Fixed

- **Breaking change:** The `maneuvers` property on route responses was previously marked as required.
  However, it is possible to explicitly request routes with this field removed.
  These would fail validation and the whole request would end with an exception
  in the API client.
  This has been fixed in this version, so the property is optional.

## Version 6.3.0 - 2025-06-03

### Added

- New fields to the time zone API responses including localized timestamps in several standard formats.

### Fixed

- Fix a bug which caused structured search bulk requests to incorrectly spell the `postalcode` field.

## Version 6.2.0 - 2025-04-21

### Added

- Add documentation for the geocoding metadata `query` field.

### Fixed

- Removed boundary circle properties that were mistakenly added.
  They did not behave as expected, so this is a bug fix despite being a code-breaking change if you used it.
- Added missing water layers to context.

## Version 6.1.0 - 2025-04-19

### Added

* Support for the v2 reverse geocoding endpoint! The new API includes better structure, more details, and better address formatting.

```diff
- let res = try await GeocodingAPI.reverse(pointLat: 59.444351, pointLon: 24.750645)
+ let res = try await GeocodingAPI.reverseV2(pointLat: 59.444351, pointLon: 24.750645)
```

For an overview of the structural changes we've made in the V2 API,
refer to the [migration guide](https://docs.stadiamaps.com/geocoding-search-autocomplete/v2-api-migration-guide/).

### Fixed

* Added the `wheelchair` property to the OSM addendum model (it was in the API response, but not explicitly modeled).
* Fix the types of the Natural Earth and Karmashapes identifiers

## Version 6.0.0 - 2025-04-07

### Added

- Support for the v2 autocomplete and place details APIs!
- Most request and response objects now conform to the `Identifiable` protocol.
  This was an upstream change in the API generator, and may affect your app
  if you had previously declared the protocol conformance manually.
  The Swift compiler has flagged such uses as warnings for some time.
- **BREAKING:** The `BulkRequest.Endpoint` and a few other enum variants have new names (automatic change by the OpenAPI generator).
- **BREAKING:** We have renamed the Place Details method to clarify its purpose.

If you want to keep using the v1 endpoint, you can amend your code like so:

```diff
- let res = try await GeocodingAPI.place(ids: ["openstreetmap:address:way/109867749"])
+ let res = try await GeocodingAPI.placeDetails(ids: ["openstreetmap:address:way/109867749"])
```

To upgrade to the v2 Place Details endpoint, which features improved address formatting,
use the new V2 method:

```diff
- let res = try await GeocodingAPI.place(ids: ["openstreetmap:address:way/109867749"])
+ let res = try await GeocodingAPI.placeDetailsV2(ids: ["openstreetmap:address:way/109867749"])
```

We are also changing the `layer` property to a string.
While layer identifiers are strongly typed at request time,
we have relaxed the schema to allow new layers in the future without breaking all existing clients
(Kotlin, Python, and others will crash when they see an unknown variant in enum mode).

You will receive errors for all breaking changes at build time, so there should not be any hidden surprises.
We expect the upgrade to take less than 5 minutes.

For an overview of the structural changes we've made in the V2 API,
refer to the [migration guide](https://docs.stadiamaps.com/geocoding-search-autocomplete/v2-api-migration-guide/).

## Version 5.0.0 - 2025-01-26

### Added

- BREAKING: Renamed models containing Valhalla and Pelias in their names to be generic. These now have rout(e|ing) or geocod(e|ing) prefixes.
- Explicitly documented more properties on the geocoding feature model.
- Adds support for the `foursquare` data source.
- Documents the `elevation_interval` parameter on certain routing requests.

## Version 4.1.0 - 2024-09-13

### Fixed

This fixes issues in the OpenAPI generated code which result in compiler crashes for users of the Xcode 16 RC.
See https://github.com/OpenAPITools/openapi-generator/pull/19564 for details.

## Version 4.0.0 - 2024-09-04

### Added

- Support for the OSRM format and navigation aids
- BREAKING: To support the new format, the response type of directions APIs has changed

You will now need to match against the response enum,
which has variants for each response.
This enables you to build your apps in a type-safe manner.
Here is an example:


```swift
let req = RouteRequest(units: .mi,
                       format: .osrm,
                       bannerInstructions: true,
                       filters: AnnotationFilters(action: .include, attributes: [
                           .speedLimit,
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
```


## Version 3.2.1 - 2024-08-16


### Fixed

- Simplified bulk geocoding request models

## Version 3.2.0 - 2024-08-15

### Added

- Add support for bulk geocoding

### Fixed

- Isochrone request models now support all costing models

## Version 3.1.1 - 2024-05-22

### Fixed

- Remove optional id field which was always null 

## Version 3.1.0 - 2024-05-11

### Added

- Add support for elevation in route responses

## Version 3.0.0 - 2024-04-30

### Added

- Add support for low-speed vehicle routing
- The matrix endpoint now accepts its own model rather than coordinate. This includes a search cutoff and paves the way for future expansion.

### Changed

- Improved the documentation of the matrix endpoint failure modes

### Fixed

- The time and distance field on matrix source to target models are now marked as nullable

## Version 2.1.0 - 2024-03-21

### Added

- `ignore_` options for ignoring various restrictions (useful for certain map matching applications)

## Version 2.0.0 - 2024-03-19

### Changed

- BREAKING: Directions Options are moved from a nested object to the root of all turn-by-turn directions APIs. Simply remove the nesting and apply any quick fixes regarding argument ordering.
- BREAKING: The OpenAPI generator has reordered several arguments in the shuffle. Quick fixes in Xcode should help.
- FIXED: Reflect upstream changes to the time/distance matrix API returning a single dimensional list of sources and targets; the extra layer of nesting is removed and may break existing code (this was a bug fix).
- Improved documentation strings.

### Added

- Alley factor for auto costing
- Resample distance parameter to height (elevation) requests
- Support for requesting alternate routes

## Version 1.0.2 - 2023-07-30

### Added

- Missing cases to the travel type enum 

## Version 1.0.1 - 2023-07-06

### Changed

- Minor improvements to docs

## Version 1.0.0 - 2023-07-06

Initial release!
