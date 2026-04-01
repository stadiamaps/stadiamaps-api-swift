# ``StadiaMaps``

A Swift SDK for accessing the Stadia Maps APIs.

## Overview

The Stadia Maps Swift SDK provides type-safe access to the full suite of
[Stadia Maps](https://stadiamaps.com/) geospatial APIs. All API methods use
Swift concurrency (`async`/`await`), making it easy to integrate into modern
Swift applications.

### Getting Started

1. Get a free API key at [client.stadiamaps.com](https://client.stadiamaps.com/signup/).
2. Configure your API key:

```swift
StadiaMapsAPI.customHeaders = ["Authorization": "Stadia-Auth YOUR-API-KEY"]
```

3. Call any API method:

```swift
let response = try await GeocodingAPI.autocomplete(text: "Stadia Maps")
```

### EU Endpoints

To keep traffic within the EU, set the base path:

```swift
StadiaMapsAPI.basePath = "https://api-eu.stadiamaps.com"
```

## Topics

### Configuration

- ``StadiaMapsAPI``

### Geocoding

- ``GeocodingAPI``

### Routing

- ``RoutingAPI``

### Geospatial

- ``GeospatialAPI``
