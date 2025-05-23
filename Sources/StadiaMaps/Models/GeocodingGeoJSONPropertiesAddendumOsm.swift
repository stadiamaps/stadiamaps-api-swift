//
// GeocodingGeoJSONPropertiesAddendumOsm.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct GeocodingGeoJSONPropertiesAddendumOsm: Codable, JSONEncodable, Hashable {
    public var website: String?
    public var wikipedia: String?
    public var wikidata: String?
    public var phone: String?

    public init(website: String? = nil, wikipedia: String? = nil, wikidata: String? = nil, phone: String? = nil) {
        self.website = website
        self.wikipedia = wikipedia
        self.wikidata = wikidata
        self.phone = phone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case website
        case wikipedia
        case wikidata
        case phone
    }

    public var additionalProperties: [String: AnyCodable] = [:]

    public subscript(key: String) -> AnyCodable? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(website, forKey: .website)
        try container.encodeIfPresent(wikipedia, forKey: .wikipedia)
        try container.encodeIfPresent(wikidata, forKey: .wikidata)
        try container.encodeIfPresent(phone, forKey: .phone)
        var additionalPropertiesContainer = encoder.container(keyedBy: String.self)
        try additionalPropertiesContainer.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        website = try container.decodeIfPresent(String.self, forKey: .website)
        wikipedia = try container.decodeIfPresent(String.self, forKey: .wikipedia)
        wikidata = try container.decodeIfPresent(String.self, forKey: .wikidata)
        phone = try container.decodeIfPresent(String.self, forKey: .phone)
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("website")
        nonAdditionalPropertyKeys.insert("wikipedia")
        nonAdditionalPropertyKeys.insert("wikidata")
        nonAdditionalPropertyKeys.insert("phone")
        let additionalPropertiesContainer = try decoder.container(keyedBy: String.self)
        additionalProperties = try additionalPropertiesContainer.decodeMap(AnyCodable.self, excludedKeys: nonAdditionalPropertyKeys)
    }
}
