//
// RoutingResponseWaypointAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RoutingResponseWaypointAllOf: Codable, JSONEncodable, Hashable {

    static let originalIndexRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    /** The original index of the location (locations may be reordered for optimized routes) */
    public var originalIndex: Int?

    public init(originalIndex: Int? = nil) {
        self.originalIndex = originalIndex
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case originalIndex = "original_index"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(originalIndex, forKey: .originalIndex)
    }
}
