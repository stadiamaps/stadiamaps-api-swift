//
// OsrmRoute.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct OsrmRoute: Codable, JSONEncodable, Hashable {
    /** The distance traveled by the route, in meters. */
    public var distance: Double
    /** The estimated travel time, in number of seconds. */
    public var duration: Double
    /** An encoded polyline (https://developers.google.com/maps/documentation/utilities/polylinealgorithm). */
    public var geometry: String
    /** The total cost of the route computed by the routing engine. */
    public var weight: Double?
    /** The costing model used for the route. */
    public var weightName: String?
    public var legs: [OsrmRouteLeg]

    public init(distance: Double, duration: Double, geometry: String, weight: Double? = nil, weightName: String? = nil, legs: [OsrmRouteLeg]) {
        self.distance = distance
        self.duration = duration
        self.geometry = geometry
        self.weight = weight
        self.weightName = weightName
        self.legs = legs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case distance
        case duration
        case geometry
        case weight
        case weightName = "weight_name"
        case legs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(distance, forKey: .distance)
        try container.encode(duration, forKey: .duration)
        try container.encode(geometry, forKey: .geometry)
        try container.encodeIfPresent(weight, forKey: .weight)
        try container.encodeIfPresent(weightName, forKey: .weightName)
        try container.encode(legs, forKey: .legs)
    }
}
