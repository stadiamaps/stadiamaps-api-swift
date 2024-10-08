//
// OsrmBannerInstruction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct OsrmBannerInstruction: Codable, JSONEncodable, Hashable {
    /** How far (in meters) from the upcoming maneuver the instruction should start being displayed. */
    public var distanceAlongGeometry: Double
    public var primary: OsrmBannerContent
    public var secondary: OsrmBannerContent?

    public init(distanceAlongGeometry: Double, primary: OsrmBannerContent, secondary: OsrmBannerContent? = nil) {
        self.distanceAlongGeometry = distanceAlongGeometry
        self.primary = primary
        self.secondary = secondary
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case distanceAlongGeometry
        case primary
        case secondary
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(distanceAlongGeometry, forKey: .distanceAlongGeometry)
        try container.encode(primary, forKey: .primary)
        try container.encodeIfPresent(secondary, forKey: .secondary)
    }
}
