//
// OpenStreetMapAddendum.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct OpenStreetMapAddendum: Codable, JSONEncodable, Hashable {
    /** The principal brand of goods/services sold at a place, or the common identity for individually owned and operated stores. */
    public var brand: String?
    /** IATA airport code. */
    public var iata: String?
    /** ICAO airport code. */
    public var icao: String?
    /** The opening hours of the place, in the OSM Opening Hours specification.  See https://wiki.openstreetmap.org/wiki/Key:opening_hours/specification for details. */
    public var openingHours: String?
    /** THe company, corp, person, or other entity directly in charge of operating something.  This is often used for public transport, hotels, restaurants, and postal services. See https://wiki.openstreetmap.org/wiki/Key:operator for details */
    public var _operator: String?
    public var phone: String?
    public var website: String?
    /** Wikidata concordance ID. */
    public var wikidata: String?
    /** Wikipedia concordance ID. */
    public var wikipedia: String?

    public init(brand: String? = nil, iata: String? = nil, icao: String? = nil, openingHours: String? = nil, _operator: String? = nil, phone: String? = nil, website: String? = nil, wikidata: String? = nil, wikipedia: String? = nil) {
        self.brand = brand
        self.iata = iata
        self.icao = icao
        self.openingHours = openingHours
        self._operator = _operator
        self.phone = phone
        self.website = website
        self.wikidata = wikidata
        self.wikipedia = wikipedia
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case brand
        case iata
        case icao
        case openingHours = "opening_hours"
        case _operator = "operator"
        case phone
        case website
        case wikidata
        case wikipedia
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(brand, forKey: .brand)
        try container.encodeIfPresent(iata, forKey: .iata)
        try container.encodeIfPresent(icao, forKey: .icao)
        try container.encodeIfPresent(openingHours, forKey: .openingHours)
        try container.encodeIfPresent(_operator, forKey: ._operator)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(website, forKey: .website)
        try container.encodeIfPresent(wikidata, forKey: .wikidata)
        try container.encodeIfPresent(wikipedia, forKey: .wikipedia)
    }
}
