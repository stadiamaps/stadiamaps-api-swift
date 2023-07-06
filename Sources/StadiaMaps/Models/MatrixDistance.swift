//
// MatrixDistance.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MatrixDistance: Codable, JSONEncodable, Hashable {

    /** The distance (in `units`) between the location in `sources` at `from_index` and the location in `targets` at `to_index`. */
    public var distance: Double
    /** The travel time (in seconds) between the location in `sources` at `from_index` and the location in `targets` at `to_index`. */
    public var time: Int
    /** The index of the start location in the `sources` array. */
    public var fromIndex: Int
    /** The index of the end location in the `targets` array. */
    public var toIndex: Int

    public init(distance: Double, time: Int, fromIndex: Int, toIndex: Int) {
        self.distance = distance
        self.time = time
        self.fromIndex = fromIndex
        self.toIndex = toIndex
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case distance
        case time
        case fromIndex = "from_index"
        case toIndex = "to_index"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(distance, forKey: .distance)
        try container.encode(time, forKey: .time)
        try container.encode(fromIndex, forKey: .fromIndex)
        try container.encode(toIndex, forKey: .toIndex)
    }
}

