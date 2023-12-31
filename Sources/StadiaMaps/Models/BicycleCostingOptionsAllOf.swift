//
// BicycleCostingOptionsAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct BicycleCostingOptionsAllOf: Codable, JSONEncodable, Hashable {
    public enum BicycleType: String, Codable, CaseIterable {
        case road = "Road"
        case hybrid = "Hybrid"
        case cross = "Cross"
        case mountain = "Mountain"
    }

    static let useRoadsRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    static let useHillsRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    static let avoidBadSurfacesRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public var bicycleType: BicycleType? = .hybrid
    /** The average comfortable travel speed (in kph) along smooth, flat roads. The costing will vary the speed based on the surface, bicycle type, elevation change, etc. This value should be the average sustainable cruising speed the cyclist can maintain over the entire route. The default speeds are as follows based on bicycle type:   * Road - 25kph   * Cross - 20kph   * Hybrid - 18kph   * Mountain - 16kph */
    public var cyclingSpeed: Int?
    /** A measure of willingness to use roads alongside other vehicles. Values near 0 attempt to avoid roads and stay on cycleways, and values near 1 indicate the cyclist is more comfortable on roads. */
    public var useRoads: Double? = 0.5
    /** A measure of willingness to take tackle hills. Values near 0 attempt to avoid hills and steeper grades even if it means a longer route, and values near 1 indicates that the user does not fear them. Note that as some routes may be impossible without hills, 0 does not guarantee avoidance of them. */
    public var useHills: Double? = 0.5
    /** A measure of how much the cyclist wants to avoid roads with poor surfaces relative to the type of bicycle being ridden. When 0, there is no penalization of roads with poorer surfaces, and only bicycle speed is taken into account. As the value approaches 1, roads with poor surfaces relative to the bicycle type receive a heaver penalty, so they will only be taken if they significantly reduce travel time. When the value is 1, all bad surfaces are completely avoided from the route, including the start and end points. */
    public var avoidBadSurfaces: Double? = 0.25
    /** The estimated cost (in seconds) to return a bicycle in `bikeshare` mode. */
    public var bssReturnCost: Int? = 120
    /** A penalty (in seconds) to return a bicycle in `bikeshare` mode. */
    public var bssReturnPenalty: Int? = 0

    public init(bicycleType: BicycleType? = .hybrid, cyclingSpeed: Int? = nil, useRoads: Double? = 0.5, useHills: Double? = 0.5, avoidBadSurfaces: Double? = 0.25, bssReturnCost: Int? = 120, bssReturnPenalty: Int? = 0) {
        self.bicycleType = bicycleType
        self.cyclingSpeed = cyclingSpeed
        self.useRoads = useRoads
        self.useHills = useHills
        self.avoidBadSurfaces = avoidBadSurfaces
        self.bssReturnCost = bssReturnCost
        self.bssReturnPenalty = bssReturnPenalty
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bicycleType = "bicycle_type"
        case cyclingSpeed = "cycling_speed"
        case useRoads = "use_roads"
        case useHills = "use_hills"
        case avoidBadSurfaces = "avoid_bad_surfaces"
        case bssReturnCost = "bss_return_cost"
        case bssReturnPenalty = "bss_return_penalty"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bicycleType, forKey: .bicycleType)
        try container.encodeIfPresent(cyclingSpeed, forKey: .cyclingSpeed)
        try container.encodeIfPresent(useRoads, forKey: .useRoads)
        try container.encodeIfPresent(useHills, forKey: .useHills)
        try container.encodeIfPresent(avoidBadSurfaces, forKey: .avoidBadSurfaces)
        try container.encodeIfPresent(bssReturnCost, forKey: .bssReturnCost)
        try container.encodeIfPresent(bssReturnPenalty, forKey: .bssReturnPenalty)
    }
}
