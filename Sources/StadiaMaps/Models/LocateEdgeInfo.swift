//
// LocateEdgeInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LocateEdgeInfo: Codable, JSONEncodable, Hashable {

    /** The mean elevation, in meters, relative to sea level. */
    public var meanElevation: Float?
    /** An encoded polyline (https://developers.google.com/maps/documentation/utilities/polylinealgorithm). Note that the polyline is always encoded with 6 digits of precision, whereas most implementations default to 5. */
    public var shape: String?
    /** A list of names that the edge goes by. */
    public var names: [String]?
    public var bikeNetwork: BikeNetwork?
    public var wayId: Int?

    public init(meanElevation: Float? = nil, shape: String? = nil, names: [String]? = nil, bikeNetwork: BikeNetwork? = nil, wayId: Int? = nil) {
        self.meanElevation = meanElevation
        self.shape = shape
        self.names = names
        self.bikeNetwork = bikeNetwork
        self.wayId = wayId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case meanElevation = "mean_elevation"
        case shape
        case names
        case bikeNetwork = "bike_network"
        case wayId = "way_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(meanElevation, forKey: .meanElevation)
        try container.encodeIfPresent(shape, forKey: .shape)
        try container.encodeIfPresent(names, forKey: .names)
        try container.encodeIfPresent(bikeNetwork, forKey: .bikeNetwork)
        try container.encodeIfPresent(wayId, forKey: .wayId)
    }
}

