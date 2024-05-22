//
// PeliasGeoJSONProperties.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct PeliasGeoJSONProperties: Codable, JSONEncodable, Hashable {
    public enum Accuracy: String, Codable, CaseIterable {
        case point
        case centroid
    }

    /** A scoped GID for this result. This can be passed to the place endpoint. Note that these are not always stable. For Geonames and Who's on First, these are usually stable, but for other sources like OSM, no stability is guaranteed. */
    public var gid: String?
    /** An ID referencing the original data source (specified via source) for the result. These IDs are specific to the source that they originated from. For example, in the case of OSM, these typically look like way/123 or point/123. */
    public var sourceId: String?
    /** A full, human-readable label. However, you may not necessarily want to use this; be sure to read the docs for name, locality, and region before making a decision. This field is mostly localized. The order of components is generally locally correct (ex: for an address in South Korea, the house number appears after the street name). However, components will use a request language equivalent if one exists (ex: Seoul instead of 서울 if lang=en). */
    public var label: String?
    public var layer: PeliasLayer?
    /** The name of the place, the street address including house number, or label of similar relevance. If your app is localized to a specific region, you may get better display results by combining name, locality OR region (or neither?), and postal code together in the local format. Experiment with what works best for your use case. */
    public var name: String?
    /** The accuracy of the geographic coordinates in the result. This value is a property of the result itself and won't change based on the query. A point result means that the record can reasonably be represented by a single geographic point. Addresses, venues, or interpolated addresses usually have point accuracy. Larger areas, such as a city or country, cannot be represented by a single point, so a centroid is given instead. */
    public var accuracy: Accuracy?
    public var addendum: PeliasGeoJSONPropertiesAddendum?
    public var continent: String?
    public var continentGid: String?
    public var country: String?
    public var countryGid: String?
    public var neighbourhood: String?
    public var neighbourhoodGid: String?
    public var borough: String?
    public var boroughGid: String?
    public var postalcode: String?
    public var street: String?
    public var housenumber: String?
    /** The city, village, town, etc. that the place / address is part of. Note that values may not always match postal or local conventions perfectly. */
    public var locality: String?
    public var localityGid: String?
    /** Administrative divisions between localities and regions. Useful for disambiguating nearby results with similar names. */
    public var county: String?
    /** Typically the first administrative division within a country. For example, a US state or a Canadian province. */
    public var region: String?
    /** The abbreviation for the region. */
    public var regionA: String?

    public init(gid: String? = nil, sourceId: String? = nil, label: String? = nil, layer: PeliasLayer? = nil, name: String? = nil, accuracy: Accuracy? = nil, addendum: PeliasGeoJSONPropertiesAddendum? = nil, continent: String? = nil, continentGid: String? = nil, country: String? = nil, countryGid: String? = nil, neighbourhood: String? = nil, neighbourhoodGid: String? = nil, borough: String? = nil, boroughGid: String? = nil, postalcode: String? = nil, street: String? = nil, housenumber: String? = nil, locality: String? = nil, localityGid: String? = nil, county: String? = nil, region: String? = nil, regionA: String? = nil) {
        self.gid = gid
        self.sourceId = sourceId
        self.label = label
        self.layer = layer
        self.name = name
        self.accuracy = accuracy
        self.addendum = addendum
        self.continent = continent
        self.continentGid = continentGid
        self.country = country
        self.countryGid = countryGid
        self.neighbourhood = neighbourhood
        self.neighbourhoodGid = neighbourhoodGid
        self.borough = borough
        self.boroughGid = boroughGid
        self.postalcode = postalcode
        self.street = street
        self.housenumber = housenumber
        self.locality = locality
        self.localityGid = localityGid
        self.county = county
        self.region = region
        self.regionA = regionA
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gid
        case sourceId = "source_id"
        case label
        case layer
        case name
        case accuracy
        case addendum
        case continent
        case continentGid = "continent_gid"
        case country
        case countryGid = "country_gid"
        case neighbourhood
        case neighbourhoodGid = "neighbourhood_gid"
        case borough
        case boroughGid = "borough_gid"
        case postalcode
        case street
        case housenumber
        case locality
        case localityGid = "locality_gid"
        case county
        case region
        case regionA = "region_a"
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
        try container.encodeIfPresent(gid, forKey: .gid)
        try container.encodeIfPresent(sourceId, forKey: .sourceId)
        try container.encodeIfPresent(label, forKey: .label)
        try container.encodeIfPresent(layer, forKey: .layer)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(accuracy, forKey: .accuracy)
        try container.encodeIfPresent(addendum, forKey: .addendum)
        try container.encodeIfPresent(continent, forKey: .continent)
        try container.encodeIfPresent(continentGid, forKey: .continentGid)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(countryGid, forKey: .countryGid)
        try container.encodeIfPresent(neighbourhood, forKey: .neighbourhood)
        try container.encodeIfPresent(neighbourhoodGid, forKey: .neighbourhoodGid)
        try container.encodeIfPresent(borough, forKey: .borough)
        try container.encodeIfPresent(boroughGid, forKey: .boroughGid)
        try container.encodeIfPresent(postalcode, forKey: .postalcode)
        try container.encodeIfPresent(street, forKey: .street)
        try container.encodeIfPresent(housenumber, forKey: .housenumber)
        try container.encodeIfPresent(locality, forKey: .locality)
        try container.encodeIfPresent(localityGid, forKey: .localityGid)
        try container.encodeIfPresent(county, forKey: .county)
        try container.encodeIfPresent(region, forKey: .region)
        try container.encodeIfPresent(regionA, forKey: .regionA)
        var additionalPropertiesContainer = encoder.container(keyedBy: String.self)
        try additionalPropertiesContainer.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        gid = try container.decodeIfPresent(String.self, forKey: .gid)
        sourceId = try container.decodeIfPresent(String.self, forKey: .sourceId)
        label = try container.decodeIfPresent(String.self, forKey: .label)
        layer = try container.decodeIfPresent(PeliasLayer.self, forKey: .layer)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        accuracy = try container.decodeIfPresent(Accuracy.self, forKey: .accuracy)
        addendum = try container.decodeIfPresent(PeliasGeoJSONPropertiesAddendum.self, forKey: .addendum)
        continent = try container.decodeIfPresent(String.self, forKey: .continent)
        continentGid = try container.decodeIfPresent(String.self, forKey: .continentGid)
        country = try container.decodeIfPresent(String.self, forKey: .country)
        countryGid = try container.decodeIfPresent(String.self, forKey: .countryGid)
        neighbourhood = try container.decodeIfPresent(String.self, forKey: .neighbourhood)
        neighbourhoodGid = try container.decodeIfPresent(String.self, forKey: .neighbourhoodGid)
        borough = try container.decodeIfPresent(String.self, forKey: .borough)
        boroughGid = try container.decodeIfPresent(String.self, forKey: .boroughGid)
        postalcode = try container.decodeIfPresent(String.self, forKey: .postalcode)
        street = try container.decodeIfPresent(String.self, forKey: .street)
        housenumber = try container.decodeIfPresent(String.self, forKey: .housenumber)
        locality = try container.decodeIfPresent(String.self, forKey: .locality)
        localityGid = try container.decodeIfPresent(String.self, forKey: .localityGid)
        county = try container.decodeIfPresent(String.self, forKey: .county)
        region = try container.decodeIfPresent(String.self, forKey: .region)
        regionA = try container.decodeIfPresent(String.self, forKey: .regionA)
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("gid")
        nonAdditionalPropertyKeys.insert("source_id")
        nonAdditionalPropertyKeys.insert("label")
        nonAdditionalPropertyKeys.insert("layer")
        nonAdditionalPropertyKeys.insert("name")
        nonAdditionalPropertyKeys.insert("accuracy")
        nonAdditionalPropertyKeys.insert("addendum")
        nonAdditionalPropertyKeys.insert("continent")
        nonAdditionalPropertyKeys.insert("continent_gid")
        nonAdditionalPropertyKeys.insert("country")
        nonAdditionalPropertyKeys.insert("country_gid")
        nonAdditionalPropertyKeys.insert("neighbourhood")
        nonAdditionalPropertyKeys.insert("neighbourhood_gid")
        nonAdditionalPropertyKeys.insert("borough")
        nonAdditionalPropertyKeys.insert("borough_gid")
        nonAdditionalPropertyKeys.insert("postalcode")
        nonAdditionalPropertyKeys.insert("street")
        nonAdditionalPropertyKeys.insert("housenumber")
        nonAdditionalPropertyKeys.insert("locality")
        nonAdditionalPropertyKeys.insert("locality_gid")
        nonAdditionalPropertyKeys.insert("county")
        nonAdditionalPropertyKeys.insert("region")
        nonAdditionalPropertyKeys.insert("region_a")
        let additionalPropertiesContainer = try decoder.container(keyedBy: String.self)
        additionalProperties = try additionalPropertiesContainer.decodeMap(AnyCodable.self, excludedKeys: nonAdditionalPropertyKeys)
    }
}
