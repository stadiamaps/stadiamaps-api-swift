# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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