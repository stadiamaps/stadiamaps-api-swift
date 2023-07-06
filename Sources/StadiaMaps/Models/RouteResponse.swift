//
// RouteResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct RouteResponse: Codable, JSONEncodable, Hashable {
    /** An identifier to disambiguate requests (echoed by the server). */
    public var id: String?
    public var trip: RouteResponseTrip

    public init(id: String? = nil, trip: RouteResponseTrip) {
        self.id = id
        self.trip = trip
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case trip
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(trip, forKey: .trip)
    }
}
