//
// LocateNodeAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct LocateNodeAllOf: Codable, JSONEncodable, Hashable {
    public enum IntersectionType: String, Codable, CaseIterable {
        case regular
        case _false = "false"
        case deadEnd = "dead-end"
        case fork
    }

    public var trafficSignal: Bool?
    public var type: NodeType?
    public var nodeId: NodeId?
    public var access: Access?
    public var edgeCount: Int?
    public var administrative: Administrative?
    public var intersectionType: IntersectionType?
    public var density: Int?
    public var localEdgeCount: Int?
    public var modeChange: Bool?

    public init(trafficSignal: Bool? = nil, type: NodeType? = nil, nodeId: NodeId? = nil, access: Access? = nil, edgeCount: Int? = nil, administrative: Administrative? = nil, intersectionType: IntersectionType? = nil, density: Int? = nil, localEdgeCount: Int? = nil, modeChange: Bool? = nil) {
        self.trafficSignal = trafficSignal
        self.type = type
        self.nodeId = nodeId
        self.access = access
        self.edgeCount = edgeCount
        self.administrative = administrative
        self.intersectionType = intersectionType
        self.density = density
        self.localEdgeCount = localEdgeCount
        self.modeChange = modeChange
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case trafficSignal = "traffic_signal"
        case type
        case nodeId = "node_id"
        case access
        case edgeCount = "edge_count"
        case administrative
        case intersectionType = "intersection_type"
        case density
        case localEdgeCount = "local_edge_count"
        case modeChange = "mode_change"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(trafficSignal, forKey: .trafficSignal)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(nodeId, forKey: .nodeId)
        try container.encodeIfPresent(access, forKey: .access)
        try container.encodeIfPresent(edgeCount, forKey: .edgeCount)
        try container.encodeIfPresent(administrative, forKey: .administrative)
        try container.encodeIfPresent(intersectionType, forKey: .intersectionType)
        try container.encodeIfPresent(density, forKey: .density)
        try container.encodeIfPresent(localEdgeCount, forKey: .localEdgeCount)
        try container.encodeIfPresent(modeChange, forKey: .modeChange)
    }
}
