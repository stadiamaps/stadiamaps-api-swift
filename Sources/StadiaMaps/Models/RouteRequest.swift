//
// RouteRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct RouteRequest: Codable, JSONEncodable, Hashable {
    public enum DirectionsType: String, Codable, CaseIterable {
        case _none = "none"
        case maneuvers
        case instructions
    }

    public enum Format: String, Codable, CaseIterable {
        case json
        case osrm
    }

    public static let locationsRule = ArrayRule(minItems: 2, maxItems: nil, uniqueItems: false)
    public var units: DistanceUnit?
    public var language: RoutingLanguages?
    /** The level of directional narrative to include. Locations and times will always be returned, but narrative generation verbosity can be controlled with this parameter. */
    public var directionsType: DirectionsType? = .instructions
    /** The output response format. The default JSON format is extremely compact and ideal for web or data-constrained use cases where you want to fetch additional attributes on demand in small chunks. The OSRM format is much richer and is configurable with significantly more info for turn-by-turn navigation use cases. */
    public var format: Format?
    /** Optionally includes helpful banners with timing information for turn-by-turn navigation. This is only available in the OSRM format. */
    public var bannerInstructions: Bool?
    /** Optionally includes voice instructions with timing information for turn-by-turn navigation. This is only available in the OSRM format. */
    public var voiceInstructions: Bool?
    public var filters: AnnotationFilters?
    /** An identifier to disambiguate requests (echoed by the server). */
    public var id: String?
    public var locations: [RoutingWaypoint]
    public var costing: CostingModel
    public var costingOptions: CostingOptions?
    /** This has the same format as the locations list. Locations are mapped to the closed road(s), and these road(s) are excluded from the route path computation. */
    public var excludeLocations: [RoutingWaypoint]?
    /** One or multiple exterior rings of polygons in the form of nested JSON arrays. Roads intersecting these rings will be avoided during path finding. Open rings will be closed automatically. If you only need to avoid a few specific roads, it's much more efficient to use `exclude_locations`. */
    public var excludePolygons: [[[Double]]]?
    /** How many alternate routes are desired. Note that fewer or no alternates may be returned. Alternates are not yet supported on routes with more than 2 locations or on time-dependent routes. */
    public var alternates: Int?
    /** If greater than zero, attempts to include elevation along the route at regular intervals. The \"native\" internal resolution is 30m, so we recommend you use this when possible. This number is interpreted as either meters or feet depending on the unit parameter. Elevation for route sections containing a bridge or tunnel is interpolated linearly. This doesn't always match the true elevation of the bridge/tunnel, but it prevents sharp artifacts from the surrounding terrain. This functionality is unique to the routing endpoints and is not available via the elevation API. NOTE: This has no effect on the OSRM response format. */
    public var elevationInterval: Float? = 0.0
    /** Determines whether the output should include roundabout exit instructions. */
    public var roundaboutExits: Bool? = true

    public init(units: DistanceUnit? = nil, language: RoutingLanguages? = nil, directionsType: DirectionsType? = .instructions, format: Format? = nil, bannerInstructions: Bool? = nil, voiceInstructions: Bool? = nil, filters: AnnotationFilters? = nil, id: String? = nil, locations: [RoutingWaypoint], costing: CostingModel, costingOptions: CostingOptions? = nil, excludeLocations: [RoutingWaypoint]? = nil, excludePolygons: [[[Double]]]? = nil, alternates: Int? = nil, elevationInterval: Float? = 0.0, roundaboutExits: Bool? = true) {
        self.units = units
        self.language = language
        self.directionsType = directionsType
        self.format = format
        self.bannerInstructions = bannerInstructions
        self.voiceInstructions = voiceInstructions
        self.filters = filters
        self.id = id
        self.locations = locations
        self.costing = costing
        self.costingOptions = costingOptions
        self.excludeLocations = excludeLocations
        self.excludePolygons = excludePolygons
        self.alternates = alternates
        self.elevationInterval = elevationInterval
        self.roundaboutExits = roundaboutExits
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case units
        case language
        case directionsType = "directions_type"
        case format
        case bannerInstructions = "banner_instructions"
        case voiceInstructions = "voice_instructions"
        case filters
        case id
        case locations
        case costing
        case costingOptions = "costing_options"
        case excludeLocations = "exclude_locations"
        case excludePolygons = "exclude_polygons"
        case alternates
        case elevationInterval = "elevation_interval"
        case roundaboutExits = "roundabout_exits"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(units, forKey: .units)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(directionsType, forKey: .directionsType)
        try container.encodeIfPresent(format, forKey: .format)
        try container.encodeIfPresent(bannerInstructions, forKey: .bannerInstructions)
        try container.encodeIfPresent(voiceInstructions, forKey: .voiceInstructions)
        try container.encodeIfPresent(filters, forKey: .filters)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(locations, forKey: .locations)
        try container.encode(costing, forKey: .costing)
        try container.encodeIfPresent(costingOptions, forKey: .costingOptions)
        try container.encodeIfPresent(excludeLocations, forKey: .excludeLocations)
        try container.encodeIfPresent(excludePolygons, forKey: .excludePolygons)
        try container.encodeIfPresent(alternates, forKey: .alternates)
        try container.encodeIfPresent(elevationInterval, forKey: .elevationInterval)
        try container.encodeIfPresent(roundaboutExits, forKey: .roundaboutExits)
    }
}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension RouteRequest: Identifiable {}
