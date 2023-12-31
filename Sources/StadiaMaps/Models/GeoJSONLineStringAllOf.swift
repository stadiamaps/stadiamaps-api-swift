//
// GeoJSONLineStringAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct GeoJSONLineStringAllOf: Codable, JSONEncodable, Hashable {
    public var coordinates: [[Double]]

    public init(coordinates: [[Double]]) {
        self.coordinates = coordinates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(coordinates, forKey: .coordinates)
    }
}
