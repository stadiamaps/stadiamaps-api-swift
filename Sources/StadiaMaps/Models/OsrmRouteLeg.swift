//
// OsrmRouteLeg.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct OsrmRouteLeg: Codable, JSONEncodable, Hashable {
    /** The distance traveled by the route, in meters. */
    public var distance: Double
    /** The estimated travel time, in number of seconds. */
    public var duration: Double
    /** The total cost of the leg computed by the routing engine. */
    public var weight: Double?
    public var summary: String?
    public var steps: [OsrmRouteStep]
    public var annotation: OsrmAnnotation?
    /** Indicates which waypoints are passed through rather than creating a new leg. */
    public var viaWaypoints: [OsrmViaWaypoint]?
    /** Administrative regions visited along the leg. */
    public var admins: [OsrmAdmin]?

    public init(distance: Double, duration: Double, weight: Double? = nil, summary: String? = nil, steps: [OsrmRouteStep], annotation: OsrmAnnotation? = nil, viaWaypoints: [OsrmViaWaypoint]? = nil, admins: [OsrmAdmin]? = nil) {
        self.distance = distance
        self.duration = duration
        self.weight = weight
        self.summary = summary
        self.steps = steps
        self.annotation = annotation
        self.viaWaypoints = viaWaypoints
        self.admins = admins
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case distance
        case duration
        case weight
        case summary
        case steps
        case annotation
        case viaWaypoints = "via_waypoints"
        case admins
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(distance, forKey: .distance)
        try container.encode(duration, forKey: .duration)
        try container.encodeIfPresent(weight, forKey: .weight)
        try container.encodeIfPresent(summary, forKey: .summary)
        try container.encode(steps, forKey: .steps)
        try container.encodeIfPresent(annotation, forKey: .annotation)
        try container.encodeIfPresent(viaWaypoints, forKey: .viaWaypoints)
        try container.encodeIfPresent(admins, forKey: .admins)
    }
}