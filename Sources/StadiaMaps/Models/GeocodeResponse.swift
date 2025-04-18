//
// GeocodeResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct GeocodeResponse: Codable, JSONEncodable, Hashable {
    public static let bboxRule = ArrayRule(minItems: 4, maxItems: 4, uniqueItems: false)
    public var geocoding: GeocodingObject
    /** An array of 4 floating point numbers representing the (W, S, E, N) extremes of the features found. */
    public var bbox: [Double]?
    public var features: [GeocodingGeoJSONFeature]

    public init(geocoding: GeocodingObject, bbox: [Double]? = nil, features: [GeocodingGeoJSONFeature]) {
        self.geocoding = geocoding
        self.bbox = bbox
        self.features = features
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case geocoding
        case bbox
        case features
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(geocoding, forKey: .geocoding)
        try container.encodeIfPresent(bbox, forKey: .bbox)
        try container.encode(features, forKey: .features)
    }
}
