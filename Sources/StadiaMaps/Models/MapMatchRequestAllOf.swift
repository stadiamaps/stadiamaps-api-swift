//
// MapMatchRequestAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct MapMatchRequestAllOf: Codable, JSONEncodable, Hashable {
    /** The timestamp at the start of the trace. Combined with `durations`, this provides a way to include timing information for an `encoded_polyline` trace. */
    public var beginTime: Int?
    /** A list of durations (in seconds) between each successive pair of points in a polyline. */
    public var durations: Int?
    /** If true, the input timestamps or durations should be used when computing elapsed time for each edge along the matched path rather than the routing algorithm estimates. */
    public var useTimestamps: Bool? = false
    public var traceOptions: MapMatchTraceOptions?
    /** If true, the response will include a `linear_references` value that contains an array of base64-encoded [OpenLR location references](https://www.openlr-association.com/fileadmin/user_upload/openlr-whitepaper_v1.5.pdf), one for each graph edge of the road network matched by the trace. */
    public var linearReferences: Bool? = false

    public init(beginTime: Int? = nil, durations: Int? = nil, useTimestamps: Bool? = false, traceOptions: MapMatchTraceOptions? = nil, linearReferences: Bool? = false) {
        self.beginTime = beginTime
        self.durations = durations
        self.useTimestamps = useTimestamps
        self.traceOptions = traceOptions
        self.linearReferences = linearReferences
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case beginTime = "begin_time"
        case durations
        case useTimestamps = "use_timestamps"
        case traceOptions = "trace_options"
        case linearReferences = "linear_references"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(beginTime, forKey: .beginTime)
        try container.encodeIfPresent(durations, forKey: .durations)
        try container.encodeIfPresent(useTimestamps, forKey: .useTimestamps)
        try container.encodeIfPresent(traceOptions, forKey: .traceOptions)
        try container.encodeIfPresent(linearReferences, forKey: .linearReferences)
    }
}
