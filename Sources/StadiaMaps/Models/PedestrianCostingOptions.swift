//
// PedestrianCostingOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct PedestrianCostingOptions: Codable, JSONEncodable, Hashable {
    public static let walkingSpeedRule = NumericRule<Double>(minimum: 0.5, exclusiveMinimum: false, maximum: 25, exclusiveMaximum: false, multipleOf: nil)
    public static let useFerryRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public static let useLivingStreetsRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public static let useTracksRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public static let useHillsRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public static let useLitRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public static let maxHikingDifficultyRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 6, exclusiveMaximum: false, multipleOf: nil)
    /** Walking speed in kph. */
    public var walkingSpeed: Double? = 5.1
    /** A factor that multiplies the cost when walkways are encountered. */
    public var walkwayFactor: Double? = 1
    /** A factor that multiplies the cost when sidewalks are encountered. */
    public var sidewalkFactor: Double? = 1
    /** A factor that multiplies the cost when alleys are encountered. */
    public var alleyFactor: Double? = 2
    /** A factor that multiplies the cost when driveways are encountered. */
    public var drivewayFactor: Double? = 5
    /** A penalty (in seconds) added to each transition onto a path with steps or stairs. */
    public var stepPenalty: Int? = 30
    /** A measure of willingness to take ferries. Values near 0 attempt to avoid ferries, and values near 1 will favour them. Note that as some routes may be impossible without ferries, 0 does not guarantee avoidance of them. */
    public var useFerry: Double? = 0.5
    /** A measure of willingness to take living streets. Values near 0 attempt to avoid them, and values near 1 will favour them. Note that as some routes may be impossible without living streets, 0 does not guarantee avoidance of them. The default value is 0 for trucks; 0.1 for other motor vehicles; 0.5 for bicycles; and 0.6 for pedestrians. */
    public var useLivingStreets: Double?
    /** A measure of willingness to take track roads. Values near 0 attempt to avoid them, and values near 1 will favour them. Note that as some routes may be impossible without track roads, 0 does not guarantee avoidance of them. The default value is 0 for automobiles, busses, and trucks; and 0.5 for all other costing modes. */
    public var useTracks: Double?
    /** A measure of willingness to take tackle hills. Values near 0 attempt to avoid hills and steeper grades even if it means a longer route, and values near 1 indicates that the user does not fear them. Note that as some routes may be impossible without hills, 0 does not guarantee avoidance of them. */
    public var useHills: Double? = 0.5
    /** A measure of preference for streets that are lit. 0 indicates indifference toward lit streets, and 1 indicates that unlit streets should be avoided. Note that even with values near 1, there is no guarantee that the returned route will include lit segments. */
    public var useLit: Double? = 0
    /** A penalty applied to transitions to service roads. This penalty can be used to reduce the likelihood of suggesting a route with service roads unless absolutely necessary. The default penalty is 15 for cars, busses, motor scooters, and motorcycles; and zero for others. */
    public var servicePenalty: Int?
    /** A factor that multiplies the cost when service roads are encountered. The default is 1.2 for cars and busses, and 1 for trucks, motor scooters, and motorcycles. */
    public var serviceFactor: Double? = 1
    /** The maximum difficulty of hiking trails allowed. This corresponds to the OSM `sac_scale`. */
    public var maxHikingDifficulty: Int? = 1
    /** The estimated cost (in seconds) to rent a bicycle from a sharing station in `bikeshare` mode. */
    public var bssRentCost: Int? = 120
    /** A penalty (in seconds) to rent a bicycle in `bikeshare` mode. */
    public var bssRentPenalty: Int? = 0
    public var type: PedestrianType?

    public init(walkingSpeed: Double? = 5.1, walkwayFactor: Double? = 1, sidewalkFactor: Double? = 1, alleyFactor: Double? = 2, drivewayFactor: Double? = 5, stepPenalty: Int? = 30, useFerry: Double? = 0.5, useLivingStreets: Double? = nil, useTracks: Double? = nil, useHills: Double? = 0.5, useLit: Double? = 0, servicePenalty: Int? = nil, serviceFactor: Double? = 1, maxHikingDifficulty: Int? = 1, bssRentCost: Int? = 120, bssRentPenalty: Int? = 0, type: PedestrianType? = nil) {
        self.walkingSpeed = walkingSpeed
        self.walkwayFactor = walkwayFactor
        self.sidewalkFactor = sidewalkFactor
        self.alleyFactor = alleyFactor
        self.drivewayFactor = drivewayFactor
        self.stepPenalty = stepPenalty
        self.useFerry = useFerry
        self.useLivingStreets = useLivingStreets
        self.useTracks = useTracks
        self.useHills = useHills
        self.useLit = useLit
        self.servicePenalty = servicePenalty
        self.serviceFactor = serviceFactor
        self.maxHikingDifficulty = maxHikingDifficulty
        self.bssRentCost = bssRentCost
        self.bssRentPenalty = bssRentPenalty
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case walkingSpeed = "walking_speed"
        case walkwayFactor = "walkway_factor"
        case sidewalkFactor = "sidewalk_factor"
        case alleyFactor = "alley_factor"
        case drivewayFactor = "driveway_factor"
        case stepPenalty = "step_penalty"
        case useFerry = "use_ferry"
        case useLivingStreets = "use_living_streets"
        case useTracks = "use_tracks"
        case useHills = "use_hills"
        case useLit = "use_lit"
        case servicePenalty = "service_penalty"
        case serviceFactor = "service_factor"
        case maxHikingDifficulty = "max_hiking_difficulty"
        case bssRentCost = "bss_rent_cost"
        case bssRentPenalty = "bss_rent_penalty"
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(walkingSpeed, forKey: .walkingSpeed)
        try container.encodeIfPresent(walkwayFactor, forKey: .walkwayFactor)
        try container.encodeIfPresent(sidewalkFactor, forKey: .sidewalkFactor)
        try container.encodeIfPresent(alleyFactor, forKey: .alleyFactor)
        try container.encodeIfPresent(drivewayFactor, forKey: .drivewayFactor)
        try container.encodeIfPresent(stepPenalty, forKey: .stepPenalty)
        try container.encodeIfPresent(useFerry, forKey: .useFerry)
        try container.encodeIfPresent(useLivingStreets, forKey: .useLivingStreets)
        try container.encodeIfPresent(useTracks, forKey: .useTracks)
        try container.encodeIfPresent(useHills, forKey: .useHills)
        try container.encodeIfPresent(useLit, forKey: .useLit)
        try container.encodeIfPresent(servicePenalty, forKey: .servicePenalty)
        try container.encodeIfPresent(serviceFactor, forKey: .serviceFactor)
        try container.encodeIfPresent(maxHikingDifficulty, forKey: .maxHikingDifficulty)
        try container.encodeIfPresent(bssRentCost, forKey: .bssRentCost)
        try container.encodeIfPresent(bssRentPenalty, forKey: .bssRentPenalty)
        try container.encodeIfPresent(type, forKey: .type)
    }
}
