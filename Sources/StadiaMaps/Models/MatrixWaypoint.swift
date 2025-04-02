//
// MatrixWaypoint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct MatrixWaypoint: Codable, JSONEncodable, Hashable {
    public static let latRule = NumericRule<Double>(minimum: -90, exclusiveMinimum: false, maximum: 90, exclusiveMaximum: false, multipleOf: nil)
    public static let lonRule = NumericRule<Double>(minimum: -180, exclusiveMinimum: false, maximum: 180, exclusiveMaximum: false, multipleOf: nil)
    /** The latitude of a point in the shape. */
    public var lat: Double
    /** The longitude of a point in the shape. */
    public var lon: Double
    /** The cutoff (in meters) at which we will assume the input is too far away from civilisation to be worth correlating to the nearest graph elements. The default is 35 km. */
    public var searchCutoff: Int?

    public init(lat: Double, lon: Double, searchCutoff: Int? = nil) {
        self.lat = lat
        self.lon = lon
        self.searchCutoff = searchCutoff
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lat
        case lon
        case searchCutoff = "search_cutoff"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(lat, forKey: .lat)
        try container.encode(lon, forKey: .lon)
        try container.encodeIfPresent(searchCutoff, forKey: .searchCutoff)
    }
}
