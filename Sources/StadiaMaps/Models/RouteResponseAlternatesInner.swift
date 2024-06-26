//
// RouteResponseAlternatesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct RouteResponseAlternatesInner: Codable, JSONEncodable, Hashable {
    public var trip: RouteTrip?

    public init(trip: RouteTrip? = nil) {
        self.trip = trip
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case trip
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(trip, forKey: .trip)
    }
}
