//
// ExtendedDirectionsOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct ExtendedDirectionsOptions: Codable, JSONEncodable, Hashable {
    public enum Format: String, Codable, CaseIterable {
        case json
        case osrm
    }

    /** The output response format. The default JSON format is extremely compact and ideal for web or data-constrained use cases where you want to fetch additional attributes on demand in small chunks. The OSRM format is much richer and is configurable with significantly more info for turn-by-turn navigation use cases. */
    public var format: Format?
    /** Optionally includes helpful banners with timing information for turn-by-turn navigation. This is only available in the OSRM format. */
    public var bannerInstructions: Bool?
    /** Optionally includes voice instructions with timing information for turn-by-turn navigation. This is only available in the OSRM format. */
    public var voiceInstructions: Bool?
    public var filters: AnnotationFilters?

    public init(format: Format? = nil, bannerInstructions: Bool? = nil, voiceInstructions: Bool? = nil, filters: AnnotationFilters? = nil) {
        self.format = format
        self.bannerInstructions = bannerInstructions
        self.voiceInstructions = voiceInstructions
        self.filters = filters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case format
        case bannerInstructions = "banner_instructions"
        case voiceInstructions = "voice_instructions"
        case filters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(format, forKey: .format)
        try container.encodeIfPresent(bannerInstructions, forKey: .bannerInstructions)
        try container.encodeIfPresent(voiceInstructions, forKey: .voiceInstructions)
        try container.encodeIfPresent(filters, forKey: .filters)
    }
}
