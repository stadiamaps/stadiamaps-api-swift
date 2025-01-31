//
// GeocodingLayer.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/** Our database is organized into several layers (in the GIS sense of the term) as follows:  - &#x60;venue&#x60;: Points of interest, businesses, and things with walls - &#x60;address&#x60;: Places with a street address - &#x60;street&#x60;: Streets, roads, highways - &#x60;county&#x60;: Places that issue passports, nations, nation-states - &#x60;macroregion&#x60;: A related group of regions (mostly in Europe) - &#x60;region&#x60;: The first administrative division within a country (usually states and provinces) - &#x60;macrocounty&#x60;: A related group of counties (mostly in Europe) - &#x60;county&#x60;: Official governmental areas; usually bigger than a locality, but almost always smaller than a region - &#x60;locality&#x60;: Towns, hamlets, cities, etc. - &#x60;localadmin&#x60;: Local administrative boundaries - &#x60;borough&#x60;: Local administrative boundaries within cities (not widely used, but present in places such as NYC and Mexico City) - &#x60;neighbourhood&#x60;: Social communities and neighborhoods (note the British spelling in the API!) - &#x60;postalcode&#x60;: Postal codes used by mail services (note: not used for reverse geocoding) - &#x60;coarse&#x60;: An alias for simultaneously using all administrative layers (everything except &#x60;venue&#x60; and &#x60;address&#x60;) - &#x60;marinearea&#x60;: Places with fishes and boats. - &#x60;ocean&#x60;: A really big marine area.  */
public enum GeocodingLayer: String, Codable, CaseIterable {
    case venue
    case address
    case street
    case country
    case macroregion
    case region
    case macrocounty
    case county
    case locality
    case localadmin
    case borough
    case neighbourhood
    case postalcode
    case coarse
    case dependency
    case macrohood
    case marinearea
    case disputed
    case empire
    case continent
    case ocean
}
