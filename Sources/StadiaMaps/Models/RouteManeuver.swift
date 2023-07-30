//
// RouteManeuver.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct RouteManeuver: Codable, JSONEncodable, Hashable {
    public enum TravelType: String, Codable, CaseIterable {
        case car
        case motorcycle
        case bus
        case tractorTrailer = "tractor_trailer"
        case motorScooter = "motor_scooter"
        case golfCart = "golf_cart"
        case foot
        case wheelchair
        case segway
        case road
        case cross
        case hybrid
        case mountain
        case tram
        case metro
        case rail
        case ferry
        case cableCar = "cable_car"
        case gondola
        case funicular
    }

    public enum BssManeuverType: String, Codable, CaseIterable {
        case noneAction = "NoneAction"
        case rentBikeAtBikeShare = "RentBikeAtBikeShare"
        case returnBikeAtBikeShare = "ReturnBikeAtBikeShare"
    }

    /** The type of route maneuver.  | Code | Type                                | |------|-------------------------------------| | 0    | None                                | | 1    | Start                               | | 2    | Start right                         | | 3    | Start left                          | | 4    | Destination                         | | 5    | Destination right                   | | 6    | Destination left                    | | 7    | Becomes                             | | 8    | Continue                            | | 9    | Slight right                        | | 10   | Right                               | | 11   | Sharp right                         | | 12   | U-turn right                        | | 13   | U-turn left                         | | 14   | Sharp left                          | | 15   | Left                                | | 16   | Slight left                         | | 17   | Ramp straight                       | | 18   | Ramp right                          | | 19   | Ramp left                           | | 20   | Exit right                          | | 21   | Exit left                           | | 22   | Stay straight                       | | 23   | Stay right                          | | 24   | Stay left                           | | 25   | Merge                               | | 26   | Enter roundabout                    | | 27   | Exit roundabout                     | | 28   | Enter ferry                         | | 29   | Exit ferry                          | | 30   | Transit                             | | 31   | Transit transfer                    | | 32   | Transit remain on                   | | 33   | Transit connection start            | | 34   | Transit connection transfer         | | 35   | Transit connection destination      | | 36   | Post-transit connection destination | | 37   | Merge right                         | | 38   | Merge left                          |  */
    public var type: Int
    /** The written maneuver instruction. */
    public var instruction: String
    /** Text suitable for use as a verbal navigation alert. */
    public var verbalTransitionAlertInstruction: String?
    /** Text suitable for use as a verbal navigation alert immediately prior to the maneuver transition. */
    public var verbalPreTransitionInstruction: String?
    /** Text suitable for use as a verbal navigation alert immediately after to the maneuver transition. */
    public var verbalPostTransitionInstruction: String?
    /** A list of street names that are consistent along the entire maneuver. */
    public var streetNames: [String]?
    /** A list of street names at the beginning of the maneuver, if they are different from the names at the end. */
    public var beginStreetNames: [String]?
    /** The estimated time to complete the entire maneuver, in seconds. */
    public var time: Double
    /** The length of the maneuver, in `units`. */
    public var length: Double
    /** The index into the list of shape points for the start of the maneuver. */
    public var beginShapeIndex: Int
    /** The index into the list of shape points for the end of the maneuver. */
    public var endShapeIndex: Int
    /** True any portion of the maneuver is subject to a toll. */
    public var toll: Bool? = false
    /** True any portion of the maneuver is unpaved or has portions of rough pavement. */
    public var rough: Bool? = false
    /** True if a gate is encountered in the course of this maneuver. */
    public var gate: Bool? = false
    /** True if a ferry is encountered in the course of this maneuver. */
    public var ferry: Bool? = false
    public var sign: ManeuverSign?
    /** The exit number of the roundabout to take after entering. */
    public var roundaboutExitCount: Int?
    /** The written departure time instruction (typically used in a transit maneuver). */
    public var departInstruction: Int?
    /** Text suitable for use as a verbal departure time instruction (typically used in a transit maneuver). */
    public var verbalDepartInstruction: Int?
    /** The written arrival time instruction (typically used in a transit maneuver). */
    public var arriveInstruction: Int?
    /** Text suitable for use as a verbal departure time instruction (typically used in a transit maneuver). */
    public var verbalArriveInstruction: Int?
    /** Public transit info (not currently supported). */
    public var transitInfo: [String: AnyCodable]?
    /** True if the `verbal_pre_transition_instruction` has been appended with the verbal instruction of the next maneuver. */
    public var verbalMultiCue: Bool? = false
    public var travelMode: TravelMode
    /** The type of travel over the maneuver. This can be thought of as a specialization of the travel mode. For example, vehicular travel may be via car, motorcycle, etc.; and travel via bicycle may be via a road bike, mountain bike, etc. */
    public var travelType: TravelType
    /** Describes a bike share action when using bikeshare routing. */
    public var bssManeuverType: BssManeuverType?

    public init(type: Int, instruction: String, verbalTransitionAlertInstruction: String? = nil, verbalPreTransitionInstruction: String? = nil, verbalPostTransitionInstruction: String? = nil, streetNames: [String]? = nil, beginStreetNames: [String]? = nil, time: Double, length: Double, beginShapeIndex: Int, endShapeIndex: Int, toll: Bool? = false, rough: Bool? = false, gate: Bool? = false, ferry: Bool? = false, sign: ManeuverSign? = nil, roundaboutExitCount: Int? = nil, departInstruction: Int? = nil, verbalDepartInstruction: Int? = nil, arriveInstruction: Int? = nil, verbalArriveInstruction: Int? = nil, transitInfo: [String: AnyCodable]? = nil, verbalMultiCue: Bool? = false, travelMode: TravelMode, travelType: TravelType, bssManeuverType: BssManeuverType? = nil) {
        self.type = type
        self.instruction = instruction
        self.verbalTransitionAlertInstruction = verbalTransitionAlertInstruction
        self.verbalPreTransitionInstruction = verbalPreTransitionInstruction
        self.verbalPostTransitionInstruction = verbalPostTransitionInstruction
        self.streetNames = streetNames
        self.beginStreetNames = beginStreetNames
        self.time = time
        self.length = length
        self.beginShapeIndex = beginShapeIndex
        self.endShapeIndex = endShapeIndex
        self.toll = toll
        self.rough = rough
        self.gate = gate
        self.ferry = ferry
        self.sign = sign
        self.roundaboutExitCount = roundaboutExitCount
        self.departInstruction = departInstruction
        self.verbalDepartInstruction = verbalDepartInstruction
        self.arriveInstruction = arriveInstruction
        self.verbalArriveInstruction = verbalArriveInstruction
        self.transitInfo = transitInfo
        self.verbalMultiCue = verbalMultiCue
        self.travelMode = travelMode
        self.travelType = travelType
        self.bssManeuverType = bssManeuverType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case instruction
        case verbalTransitionAlertInstruction = "verbal_transition_alert_instruction"
        case verbalPreTransitionInstruction = "verbal_pre_transition_instruction"
        case verbalPostTransitionInstruction = "verbal_post_transition_instruction"
        case streetNames = "street_names"
        case beginStreetNames = "begin_street_names"
        case time
        case length
        case beginShapeIndex = "begin_shape_index"
        case endShapeIndex = "end_shape_index"
        case toll
        case rough
        case gate
        case ferry
        case sign
        case roundaboutExitCount = "roundabout_exit_count"
        case departInstruction = "depart_instruction"
        case verbalDepartInstruction = "verbal_depart_instruction"
        case arriveInstruction = "arrive_instruction"
        case verbalArriveInstruction = "verbal_arrive_instruction"
        case transitInfo = "transit_info"
        case verbalMultiCue = "verbal_multi_cue"
        case travelMode = "travel_mode"
        case travelType = "travel_type"
        case bssManeuverType = "bss_maneuver_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(instruction, forKey: .instruction)
        try container.encodeIfPresent(verbalTransitionAlertInstruction, forKey: .verbalTransitionAlertInstruction)
        try container.encodeIfPresent(verbalPreTransitionInstruction, forKey: .verbalPreTransitionInstruction)
        try container.encodeIfPresent(verbalPostTransitionInstruction, forKey: .verbalPostTransitionInstruction)
        try container.encodeIfPresent(streetNames, forKey: .streetNames)
        try container.encodeIfPresent(beginStreetNames, forKey: .beginStreetNames)
        try container.encode(time, forKey: .time)
        try container.encode(length, forKey: .length)
        try container.encode(beginShapeIndex, forKey: .beginShapeIndex)
        try container.encode(endShapeIndex, forKey: .endShapeIndex)
        try container.encodeIfPresent(toll, forKey: .toll)
        try container.encodeIfPresent(rough, forKey: .rough)
        try container.encodeIfPresent(gate, forKey: .gate)
        try container.encodeIfPresent(ferry, forKey: .ferry)
        try container.encodeIfPresent(sign, forKey: .sign)
        try container.encodeIfPresent(roundaboutExitCount, forKey: .roundaboutExitCount)
        try container.encodeIfPresent(departInstruction, forKey: .departInstruction)
        try container.encodeIfPresent(verbalDepartInstruction, forKey: .verbalDepartInstruction)
        try container.encodeIfPresent(arriveInstruction, forKey: .arriveInstruction)
        try container.encodeIfPresent(verbalArriveInstruction, forKey: .verbalArriveInstruction)
        try container.encodeIfPresent(transitInfo, forKey: .transitInfo)
        try container.encodeIfPresent(verbalMultiCue, forKey: .verbalMultiCue)
        try container.encode(travelMode, forKey: .travelMode)
        try container.encode(travelType, forKey: .travelType)
        try container.encodeIfPresent(bssManeuverType, forKey: .bssManeuverType)
    }
}
