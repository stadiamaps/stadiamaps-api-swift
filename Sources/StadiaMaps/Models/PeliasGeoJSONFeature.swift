//
// PeliasGeoJSONFeature.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct PeliasGeoJSONFeature: Codable, JSONEncodable, Hashable {
    public enum ModelType: String, Codable, CaseIterable {
        case feature = "Feature"
    }

    public var type: ModelType
    public var geometry: GeoJSONPoint
    public var properties: PeliasGeoJSONProperties?
    /** An array of 4 floating point numbers representing the (W, S, E, N) extremes of the features found. */
    public var bbox: [Double]?

    public init(type: ModelType, geometry: GeoJSONPoint, properties: PeliasGeoJSONProperties? = nil, bbox: [Double]? = nil) {
        self.type = type
        self.geometry = geometry
        self.properties = properties
        self.bbox = bbox
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case geometry
        case properties
        case bbox
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(geometry, forKey: .geometry)
        try container.encodeIfPresent(properties, forKey: .properties)
        try container.encodeIfPresent(bbox, forKey: .bbox)
    }
}
