//
// FeaturePropertiesV2Properties.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/** The GeoJSON properties object. */
public struct FeaturePropertiesV2Properties: Codable, JSONEncodable, Hashable {
    public var addendum: AddendumV2?
    public var addressComponents: AddressComponentsV2?
    /** The coarse-grained location of the place (e.g. Seoul, South Korea).  In search experiences, this is typically the second line of a result cell. */
    public var coarseLocation: String?
    /** The level of confidence (0.0 - 1.0) that the result is what you actually searched for.  This is not necessarily the same as relevance (results are returned sorted by relevance already), but rather how closely the explicit or inferred components match the result. This is only present for forward geocoding responses (not autocomplete or place details). */
    public var confidence: Double?
    public var context: Context?
    /** The distance from the search focus point, in kilometers. */
    public var distance: Double?
    /** The address formatted as a single line, following local postal conventions for ordering and separators. */
    public var formattedAddressLine: String?
    /** Address components split up into lines, following local postal conventions for ordering and separators. */
    public var formattedAddressLines: [String]?
    /** The globally unique identifier for this result.  You can use this to uniquely identify a place, and to get the full details from the place details endpoint.  NOTE: While GIDs are unique, they may not necessarily be stable in all datasets. */
    public var gid: String
    /** The data layer containing the place (e.g. \"address\" or \"poi\"). */
    public var layer: String
    /** The type of match (forward geocoding endpoints only). */
    public var matchType: MatchType?
    /** The best name for the place, accounting for request language preferences.  When building an autocomplete search experience, this is the primary display string. */
    public var name: String
    public var precision: Precision
    /** A list of sources from which the result is derived. */
    public var sources: [SourceAttribution]?

    public init(addendum: AddendumV2? = nil, addressComponents: AddressComponentsV2? = nil, coarseLocation: String? = nil, confidence: Double? = nil, context: Context? = nil, distance: Double? = nil, formattedAddressLine: String? = nil, formattedAddressLines: [String]? = nil, gid: String, layer: String, matchType: MatchType? = nil, name: String, precision: Precision, sources: [SourceAttribution]? = nil) {
        self.addendum = addendum
        self.addressComponents = addressComponents
        self.coarseLocation = coarseLocation
        self.confidence = confidence
        self.context = context
        self.distance = distance
        self.formattedAddressLine = formattedAddressLine
        self.formattedAddressLines = formattedAddressLines
        self.gid = gid
        self.layer = layer
        self.matchType = matchType
        self.name = name
        self.precision = precision
        self.sources = sources
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case addendum
        case addressComponents = "address_components"
        case coarseLocation = "coarse_location"
        case confidence
        case context
        case distance
        case formattedAddressLine = "formatted_address_line"
        case formattedAddressLines = "formatted_address_lines"
        case gid
        case layer
        case matchType = "match_type"
        case name
        case precision
        case sources
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(addendum, forKey: .addendum)
        try container.encodeIfPresent(addressComponents, forKey: .addressComponents)
        try container.encodeIfPresent(coarseLocation, forKey: .coarseLocation)
        try container.encodeIfPresent(confidence, forKey: .confidence)
        try container.encodeIfPresent(context, forKey: .context)
        try container.encodeIfPresent(distance, forKey: .distance)
        try container.encodeIfPresent(formattedAddressLine, forKey: .formattedAddressLine)
        try container.encodeIfPresent(formattedAddressLines, forKey: .formattedAddressLines)
        try container.encode(gid, forKey: .gid)
        try container.encode(layer, forKey: .layer)
        try container.encodeIfPresent(matchType, forKey: .matchType)
        try container.encode(name, forKey: .name)
        try container.encode(precision, forKey: .precision)
        try container.encodeIfPresent(sources, forKey: .sources)
    }
}
