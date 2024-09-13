# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
