//
// MapMatchRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct MapMatchRequest: Codable, JSONEncodable, Hashable {
    public enum ShapeMatch: String, Codable, CaseIterable {
        case edgeWalk = "edge_walk"
        case mapSnap = "map_snap"
        case walkOrSnap = "walk_or_snap"
    }

    public enum DirectionsType: String, Codable, CaseIterable {
        case _none = "none"
        case maneuvers
        case instructions
    }

    /** An identifier to disambiguate requests (echoed by the server). */
    public var id: String?
    /** REQUIRED if `encoded_polyline` is not present. Note that `break` type locations are only supported when `shape_match` is set to `map_match`. */
    public var shape: [MapMatchWaypoint]?
    /** REQUIRED if `shape` is not present. An encoded polyline (https://developers.google.com/maps/documentation/utilities/polylinealgorithm). Note that the polyline must be encoded with 6 digits of precision rather than the usual 5. */
    public var encodedPolyline: String?
    public var costing: MapMatchCostingModel
    public var costingOptions: CostingOptions?
    /** Three snapping modes provide some control over how the map matching occurs. `edge_walk` is fast, but requires extremely precise data that matches the route graph almost perfectly. `map_snap` can handle significantly noisier data, but is very expensive. `walk_or_snap`, the default, tries to use edge walking first and falls back to map matching if edge walking fails. In general, you should not need to change this parameter unless you want to trace a multi-leg route with multiple `break` locations in the `shape`. */
    public var shapeMatch: ShapeMatch?
    public var units: DistanceUnit?
    public var language: ValhallaLanguages?
    /** The level of directional narrative to include. Locations and times will always be returned, but narrative generation verbosity can be controlled with this parameter. */
    public var directionsType: DirectionsType? = .instructions
    /** The timestamp at the start of the trace. Combined with `durations`, this provides a way to include timing information for an `encoded_polyline` trace. */
    public var beginTime: Int?
    /** A list of durations (in seconds) between each successive pair of points in a polyline. */
    public var durations: Int?
    /** If true, the input timestamps or durations should be used when computing elapsed time for each edge along the matched path rather than the routing algorithm estimates. */
    public var useTimestamps: Bool? = false
    public var traceOptions: MapMatchTraceOptions?
    /** If true, the response will include a `linear_references` value that contains an array of base64-encoded [OpenLR location references](https://www.openlr-association.com/fileadmin/user_upload/openlr-whitepaper_v1.5.pdf), one for each graph edge of the road network matched by the trace. */
    public var linearReferences: Bool? = false

    public init(id: String? = nil, shape: [MapMatchWaypoint]? = nil, encodedPolyline: String? = nil, costing: MapMatchCostingModel, costingOptions: CostingOptions? = nil, shapeMatch: ShapeMatch? = nil, units: DistanceUnit? = nil, language: ValhallaLanguages? = nil, directionsType: DirectionsType? = .instructions, beginTime: Int? = nil, durations: Int? = nil, useTimestamps: Bool? = false, traceOptions: MapMatchTraceOptions? = nil, linearReferences: Bool? = false) {
        self.id = id
        self.shape = shape
        self.encodedPolyline = encodedPolyline
        self.costing = costing
        self.costingOptions = costingOptions
        self.shapeMatch = shapeMatch
        self.units = units
        self.language = language
        self.directionsType = directionsType
        self.beginTime = beginTime
        self.durations = durations
        self.useTimestamps = useTimestamps
        self.traceOptions = traceOptions
        self.linearReferences = linearReferences
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case shape
        case encodedPolyline = "encoded_polyline"
        case costing
        case costingOptions = "costing_options"
        case shapeMatch = "shape_match"
        case units
        case language
        case directionsType = "directions_type"
        case beginTime = "begin_time"
        case durations
        case useTimestamps = "use_timestamps"
        case traceOptions = "trace_options"
        case linearReferences = "linear_references"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(shape, forKey: .shape)
        try container.encodeIfPresent(encodedPolyline, forKey: .encodedPolyline)
        try container.encode(costing, forKey: .costing)
        try container.encodeIfPresent(costingOptions, forKey: .costingOptions)
        try container.encodeIfPresent(shapeMatch, forKey: .shapeMatch)
        try container.encodeIfPresent(units, forKey: .units)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(directionsType, forKey: .directionsType)
        try container.encodeIfPresent(beginTime, forKey: .beginTime)
        try container.encodeIfPresent(durations, forKey: .durations)
        try container.encodeIfPresent(useTimestamps, forKey: .useTimestamps)
        try container.encodeIfPresent(traceOptions, forKey: .traceOptions)
        try container.encodeIfPresent(linearReferences, forKey: .linearReferences)
    }
}
