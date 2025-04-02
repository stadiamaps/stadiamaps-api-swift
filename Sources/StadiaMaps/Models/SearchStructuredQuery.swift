//
// SearchStructuredQuery.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct SearchStructuredQuery: Codable, JSONEncodable, Hashable {
    public static let focusPointLatRule = NumericRule<Double>(minimum: -90, exclusiveMinimum: false, maximum: 90, exclusiveMaximum: false, multipleOf: nil)
    public static let focusPointLonRule = NumericRule<Double>(minimum: -180, exclusiveMinimum: false, maximum: 180, exclusiveMaximum: false, multipleOf: nil)
    public static let boundaryRectMinLatRule = NumericRule<Double>(minimum: -90, exclusiveMinimum: false, maximum: 90, exclusiveMaximum: false, multipleOf: nil)
    public static let boundaryRectMaxLatRule = NumericRule<Double>(minimum: -90, exclusiveMinimum: false, maximum: 90, exclusiveMaximum: false, multipleOf: nil)
    public static let boundaryRectMinLonRule = NumericRule<Double>(minimum: -180, exclusiveMinimum: false, maximum: 180, exclusiveMaximum: false, multipleOf: nil)
    public static let boundaryRectMaxLonRule = NumericRule<Double>(minimum: -180, exclusiveMinimum: false, maximum: 180, exclusiveMaximum: false, multipleOf: nil)
    public static let boundaryCircleLatRule = NumericRule<Double>(minimum: -90, exclusiveMinimum: false, maximum: 90, exclusiveMaximum: false, multipleOf: nil)
    public static let boundaryCircleLonRule = NumericRule<Double>(minimum: -180, exclusiveMinimum: false, maximum: 180, exclusiveMaximum: false, multipleOf: nil)
    /** A street name, optionally with a house number. */
    public var address: String?
    /** Varies by area, but has a locally specific meaning (NOT always an official administrative unit). */
    public var neighbourhood: String?
    /** A unit within a city (not widely used, but present in places like NYC and Mexico City). */
    public var borough: String?
    /** The city, village, town, etc. that the place/address is part of. */
    public var locality: String?
    /** Administrative divisions between localities and regions. Not commonly used as input to structured geocoding. */
    public var county: String?
    /** Typically the first administrative division within a country. For example, a US state or a Canadian province. */
    public var region: String?
    /** A mail sorting code. */
    public var postalCode: String?
    /** A country code in ISO 3116-1 alpha-2 or alpha-3 format. */
    public var country: String?
    /** The latitude of the point to focus the search on. This will bias results toward the focus point. Requires `focus.point.lon`. */
    public var focusPointLat: Double?
    /** The longitude of the point to focus the search on. This will bias results toward the focus point. Requires `focus.point.lat`. */
    public var focusPointLon: Double?
    /** Defines the min latitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. */
    public var boundaryRectMinLat: Double?
    /** Defines the max latitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. */
    public var boundaryRectMaxLat: Double?
    /** Defines the min longitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. */
    public var boundaryRectMinLon: Double?
    /** Defines the max longitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. */
    public var boundaryRectMaxLon: Double?
    /** The latitude of the center of a circle to limit the search to. Requires `boundary.circle.lon`. */
    public var boundaryCircleLat: Double?
    /** The longitude of the center of a circle to limit the search to. Requires `boundary.circle.lat`. */
    public var boundaryCircleLon: Double?
    /** The radius of the circle (in kilometers) to limit the search to. Defaults to 50km if unspecified. */
    public var boundaryCircleRadius: Double?
    /** A list of country codes in ISO 3116-1 alpha-2 or alpha-3 format. */
    public var boundaryCountry: [String]?
    /** The GID of an area to limit the search to. */
    public var boundaryGid: String?
    /** A list of layers to limit the search to. */
    public var layers: [GeocodingLayer]?
    /** A list of sources to limit the search to. */
    public var sources: [GeocodingSource]?
    /** The maximum number of results to return. */
    public var size: Int?
    /** A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a `langtag` (in RFC 5646 terms) can contain script, region, etc., only the `language` portion, an ISO 639 code, will be considered. So `en-US` and `en-GB` will both be treated as English. */
    public var lang: String?

    public init(address: String? = nil, neighbourhood: String? = nil, borough: String? = nil, locality: String? = nil, county: String? = nil, region: String? = nil, postalCode: String? = nil, country: String? = nil, focusPointLat: Double? = nil, focusPointLon: Double? = nil, boundaryRectMinLat: Double? = nil, boundaryRectMaxLat: Double? = nil, boundaryRectMinLon: Double? = nil, boundaryRectMaxLon: Double? = nil, boundaryCircleLat: Double? = nil, boundaryCircleLon: Double? = nil, boundaryCircleRadius: Double? = nil, boundaryCountry: [String]? = nil, boundaryGid: String? = nil, layers: [GeocodingLayer]? = nil, sources: [GeocodingSource]? = nil, size: Int? = nil, lang: String? = nil) {
        self.address = address
        self.neighbourhood = neighbourhood
        self.borough = borough
        self.locality = locality
        self.county = county
        self.region = region
        self.postalCode = postalCode
        self.country = country
        self.focusPointLat = focusPointLat
        self.focusPointLon = focusPointLon
        self.boundaryRectMinLat = boundaryRectMinLat
        self.boundaryRectMaxLat = boundaryRectMaxLat
        self.boundaryRectMinLon = boundaryRectMinLon
        self.boundaryRectMaxLon = boundaryRectMaxLon
        self.boundaryCircleLat = boundaryCircleLat
        self.boundaryCircleLon = boundaryCircleLon
        self.boundaryCircleRadius = boundaryCircleRadius
        self.boundaryCountry = boundaryCountry
        self.boundaryGid = boundaryGid
        self.layers = layers
        self.sources = sources
        self.size = size
        self.lang = lang
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case neighbourhood
        case borough
        case locality
        case county
        case region
        case postalCode
        case country
        case focusPointLat = "focus.point.lat"
        case focusPointLon = "focus.point.lon"
        case boundaryRectMinLat = "boundary.rect.min_lat"
        case boundaryRectMaxLat = "boundary.rect.max_lat"
        case boundaryRectMinLon = "boundary.rect.min_lon"
        case boundaryRectMaxLon = "boundary.rect.max_lon"
        case boundaryCircleLat = "boundary.circle.lat"
        case boundaryCircleLon = "boundary.circle.lon"
        case boundaryCircleRadius = "boundary.circle.radius"
        case boundaryCountry = "boundary.country"
        case boundaryGid = "boundary.gid"
        case layers
        case sources
        case size
        case lang
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(neighbourhood, forKey: .neighbourhood)
        try container.encodeIfPresent(borough, forKey: .borough)
        try container.encodeIfPresent(locality, forKey: .locality)
        try container.encodeIfPresent(county, forKey: .county)
        try container.encodeIfPresent(region, forKey: .region)
        try container.encodeIfPresent(postalCode, forKey: .postalCode)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(focusPointLat, forKey: .focusPointLat)
        try container.encodeIfPresent(focusPointLon, forKey: .focusPointLon)
        try container.encodeIfPresent(boundaryRectMinLat, forKey: .boundaryRectMinLat)
        try container.encodeIfPresent(boundaryRectMaxLat, forKey: .boundaryRectMaxLat)
        try container.encodeIfPresent(boundaryRectMinLon, forKey: .boundaryRectMinLon)
        try container.encodeIfPresent(boundaryRectMaxLon, forKey: .boundaryRectMaxLon)
        try container.encodeIfPresent(boundaryCircleLat, forKey: .boundaryCircleLat)
        try container.encodeIfPresent(boundaryCircleLon, forKey: .boundaryCircleLon)
        try container.encodeIfPresent(boundaryCircleRadius, forKey: .boundaryCircleRadius)
        try container.encodeIfPresent(boundaryCountry, forKey: .boundaryCountry)
        try container.encodeIfPresent(boundaryGid, forKey: .boundaryGid)
        try container.encodeIfPresent(layers, forKey: .layers)
        try container.encodeIfPresent(sources, forKey: .sources)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(lang, forKey: .lang)
    }
}
