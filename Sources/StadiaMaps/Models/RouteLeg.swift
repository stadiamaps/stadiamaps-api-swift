//
// RouteLeg.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct RouteLeg: Codable, JSONEncodable, Hashable {
    public var maneuvers: [RouteManeuver]
    /** An encoded polyline (https://developers.google.com/maps/documentation/utilities/polylinealgorithm) with 6 digits of decimal precision. */
    public var shape: String
    public var summary: RouteSummary

    public init(maneuvers: [RouteManeuver], shape: String, summary: RouteSummary) {
        self.maneuvers = maneuvers
        self.shape = shape
        self.summary = summary
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maneuvers
        case shape
        case summary
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(maneuvers, forKey: .maneuvers)
        try container.encode(shape, forKey: .shape)
        try container.encode(summary, forKey: .summary)
    }
}
