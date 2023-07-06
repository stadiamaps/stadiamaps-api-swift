//
// GeoJSONLineString.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GeoJSONLineString: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case point = "Point"
        case multiPoint = "MultiPoint"
        case lineString = "LineString"
        case multiLineString = "MultiLineString"
        case polygon = "Polygon"
        case multiPolygon = "MultiPolygon"
    }
    public var type: ModelType
    public var coordinates: [[Double]]

    public init(type: ModelType, coordinates: [[Double]]) {
        self.type = type
        self.coordinates = coordinates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case coordinates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(coordinates, forKey: .coordinates)
    }
}
