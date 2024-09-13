//
// OsrmAnnotation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct OsrmAnnotation: Codable, JSONEncodable, Hashable {
    /** The distance, in meters, between each pair of coordinates. */
    public var distance: [Double]?
    /** The duration between each pair of coordinates, in seconds. */
    public var duration: [Double]?
    public var weight: [Int]?
    /** The estimated speed of travel between each pair of coordinates in meters/sec. */
    public var speed: [Double]?
    public var maxspeed: [OsrmSpeedLimit]?

    public init(distance: [Double]? = nil, duration: [Double]? = nil, weight: [Int]? = nil, speed: [Double]? = nil, maxspeed: [OsrmSpeedLimit]? = nil) {
        self.distance = distance
        self.duration = duration
        self.weight = weight
        self.speed = speed
        self.maxspeed = maxspeed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case distance
        case duration
        case weight
        case speed
        case maxspeed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(distance, forKey: .distance)
        try container.encodeIfPresent(duration, forKey: .duration)
        try container.encodeIfPresent(weight, forKey: .weight)
        try container.encodeIfPresent(speed, forKey: .speed)
        try container.encodeIfPresent(maxspeed, forKey: .maxspeed)
    }
}