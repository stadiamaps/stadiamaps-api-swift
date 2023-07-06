//
// IntersectingEdge.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IntersectingEdge: Codable, JSONEncodable, Hashable {

    /** The direction at the beginning of an edge. The units are degrees clockwise from north. */
    public var beginHeading: Int?
    /** True if this intersecting edge at the end node has consistent names with the path from the other edge. */
    public var fromEdgeNameConsistency: Bool?
    /** True if this intersecting edge at the end node has consistent names with the path to the other edge. */
    public var toEdgeNameConsistency: Bool?
    public var driveability: Traversability?
    public var cyclability: Traversability?
    public var walkability: Traversability?
    public var use: EdgeUse?
    public var roadClass: RoadClass?

    public init(beginHeading: Int? = nil, fromEdgeNameConsistency: Bool? = nil, toEdgeNameConsistency: Bool? = nil, driveability: Traversability? = nil, cyclability: Traversability? = nil, walkability: Traversability? = nil, use: EdgeUse? = nil, roadClass: RoadClass? = nil) {
        self.beginHeading = beginHeading
        self.fromEdgeNameConsistency = fromEdgeNameConsistency
        self.toEdgeNameConsistency = toEdgeNameConsistency
        self.driveability = driveability
        self.cyclability = cyclability
        self.walkability = walkability
        self.use = use
        self.roadClass = roadClass
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case beginHeading = "begin_heading"
        case fromEdgeNameConsistency = "from_edge_name_consistency"
        case toEdgeNameConsistency = "to_edge_name_consistency"
        case driveability
        case cyclability
        case walkability
        case use
        case roadClass = "road_class"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(beginHeading, forKey: .beginHeading)
        try container.encodeIfPresent(fromEdgeNameConsistency, forKey: .fromEdgeNameConsistency)
        try container.encodeIfPresent(toEdgeNameConsistency, forKey: .toEdgeNameConsistency)
        try container.encodeIfPresent(driveability, forKey: .driveability)
        try container.encodeIfPresent(cyclability, forKey: .cyclability)
        try container.encodeIfPresent(walkability, forKey: .walkability)
        try container.encodeIfPresent(use, forKey: .use)
        try container.encodeIfPresent(roadClass, forKey: .roadClass)
    }
}
