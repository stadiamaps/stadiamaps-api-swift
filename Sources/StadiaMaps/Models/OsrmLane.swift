//
// OsrmLane.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct OsrmLane: Codable, JSONEncodable, Hashable {
    public enum Indications: String, Codable, CaseIterable {
        case _none = "none"
        case uturn
        case sharpRight = "sharp right"
        case _right = "right"
        case slightRight = "slight right"
        case straight
        case slightLeft = "slight left"
        case _left = "left"
        case sharpLeft = "sharp left"
    }

    /** A list of indication (e.g. marking on the road) specifying the turn lane. A road can have multiple indications (e.g. an arrow pointing straight and left). */
    public var indications: [Indications]
    /** True if the lane is a valid choice for the current maneuver. */
    public var valid: Bool

    public init(indications: [Indications], valid: Bool) {
        self.indications = indications
        self.valid = valid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case indications
        case valid
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(indications, forKey: .indications)
        try container.encode(valid, forKey: .valid)
    }
}
