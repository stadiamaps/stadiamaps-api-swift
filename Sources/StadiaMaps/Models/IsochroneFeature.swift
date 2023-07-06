//
// IsochroneFeature.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IsochroneFeature: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case feature = "Feature"
    }
    public var properties: IsochroneProperties?
    public var geometry: [String: AnyCodable]?
    public var type: ModelType?

    public init(properties: IsochroneProperties? = nil, geometry: [String: AnyCodable]? = nil, type: ModelType? = nil) {
        self.properties = properties
        self.geometry = geometry
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case properties
        case geometry
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(properties, forKey: .properties)
        try container.encodeIfPresent(geometry, forKey: .geometry)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

