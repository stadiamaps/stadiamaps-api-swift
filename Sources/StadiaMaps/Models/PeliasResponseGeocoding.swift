//
// PeliasResponseGeocoding.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct PeliasResponseGeocoding: Codable, JSONEncodable, Hashable {
    /** A URL containing attribution information. If you are not using Stadia Maps and our standard attribution already for your basemaps, you must include this attribution link somewhere in your website/app. */
    public var attribution: String?
    /** Technical details of the query. This is most useful for debugging during development. See the full example for the list of properties; these should be self-explanatory, so we don't enumerate them in the spec. */
    public var query: [String: AnyCodable]?
    /** An array of non-critical warnings. This is normally for informational/debugging purposes and not a serious problem. */
    public var warnings: [String]?
    /** An array of more serious errors (for example, omitting a required parameter). Don’t ignore these. */
    public var errors: [String]?

    public init(attribution: String? = nil, query: [String: AnyCodable]? = nil, warnings: [String]? = nil, errors: [String]? = nil) {
        self.attribution = attribution
        self.query = query
        self.warnings = warnings
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attribution
        case query
        case warnings
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attribution, forKey: .attribution)
        try container.encodeIfPresent(query, forKey: .query)
        try container.encodeIfPresent(warnings, forKey: .warnings)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}
