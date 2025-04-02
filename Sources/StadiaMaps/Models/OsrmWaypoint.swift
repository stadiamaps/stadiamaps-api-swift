//
// OsrmWaypoint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct OsrmWaypoint: Codable, JSONEncodable, Hashable {
    public static let locationRule = ArrayRule(minItems: 2, maxItems: 2, uniqueItems: false)
    public var name: String?
    /** A (longitude, latitude) coordinate pair. */
    public var location: [Double]
    /** The distance of the snapped point from the original location. */
    public var distance: Double
    public var hint: String?

    public init(name: String? = nil, location: [Double], distance: Double, hint: String? = nil) {
        self.name = name
        self.location = location
        self.distance = distance
        self.hint = hint
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case location
        case distance
        case hint
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(location, forKey: .location)
        try container.encode(distance, forKey: .distance)
        try container.encodeIfPresent(hint, forKey: .hint)
    }
}
