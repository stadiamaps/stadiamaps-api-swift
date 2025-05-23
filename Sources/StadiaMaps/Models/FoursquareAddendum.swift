//
// FoursquareAddendum.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct FoursquareAddendum: Codable, JSONEncodable, Hashable {
    public var tel: String?
    public var website: String?

    public init(tel: String? = nil, website: String? = nil) {
        self.tel = tel
        self.website = website
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tel
        case website
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tel, forKey: .tel)
        try container.encodeIfPresent(website, forKey: .website)
    }
}
