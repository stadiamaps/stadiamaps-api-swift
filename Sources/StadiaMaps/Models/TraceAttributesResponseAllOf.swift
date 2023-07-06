//
// TraceAttributesResponseAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TraceAttributesResponseAllOf: Codable, JSONEncodable, Hashable {

    /** An identifier to disambiguate requests (echoed by the server). */
    public var id: String?
    public var units: ValhallaLongUnits?
    /** Alternate paths, if any, that were not classified as the best match. */
    public var alternatePaths: [TraceAttributesBaseResponse]?

    public init(id: String? = nil, units: ValhallaLongUnits? = nil, alternatePaths: [TraceAttributesBaseResponse]? = nil) {
        self.id = id
        self.units = units
        self.alternatePaths = alternatePaths
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case units
        case alternatePaths = "alternate_paths"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(units, forKey: .units)
        try container.encodeIfPresent(alternatePaths, forKey: .alternatePaths)
    }
}

