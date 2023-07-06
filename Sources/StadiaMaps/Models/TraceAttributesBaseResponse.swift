//
// TraceAttributesBaseResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TraceAttributesBaseResponse: Codable, JSONEncodable, Hashable {

    static let confidenceScoreRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    /** The list of edges matched along the path. */
    public var edges: [TraceEdge]?
    /** The set of administrative regions matched along the path. Rather than repeating this information for every end node, the admins in this list are referenced by index. */
    public var admins: [AdminRegion]?
    /** List of match results when using the map_snap shape match algorithm. There is a one-to-one correspondence with the input set of latitude, longitude coordinates and this list of match results. */
    public var matchedPoints: [MatchedPoint]?
    public var osmChangeset: Int?
    /** The encoded polyline (https://developers.google.com/maps/documentation/utilities/polylinealgorithm) of the matched path. */
    public var shape: String?
    public var confidenceScore: Double?

    public init(edges: [TraceEdge]? = nil, admins: [AdminRegion]? = nil, matchedPoints: [MatchedPoint]? = nil, osmChangeset: Int? = nil, shape: String? = nil, confidenceScore: Double? = nil) {
        self.edges = edges
        self.admins = admins
        self.matchedPoints = matchedPoints
        self.osmChangeset = osmChangeset
        self.shape = shape
        self.confidenceScore = confidenceScore
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case edges
        case admins
        case matchedPoints = "matched_points"
        case osmChangeset = "osm_changeset"
        case shape
        case confidenceScore = "confidence_score"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(edges, forKey: .edges)
        try container.encodeIfPresent(admins, forKey: .admins)
        try container.encodeIfPresent(matchedPoints, forKey: .matchedPoints)
        try container.encodeIfPresent(osmChangeset, forKey: .osmChangeset)
        try container.encodeIfPresent(shape, forKey: .shape)
        try container.encodeIfPresent(confidenceScore, forKey: .confidenceScore)
    }
}
