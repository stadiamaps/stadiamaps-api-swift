//
// Route200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public enum Route200Response: Codable, JSONEncodable, Hashable {
    case typeOsrmRouteResponse(OsrmRouteResponse)
    case typeRouteResponse(RouteResponse)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .typeOsrmRouteResponse(value):
            try container.encode(value)
        case let .typeRouteResponse(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(OsrmRouteResponse.self) {
            self = .typeOsrmRouteResponse(value)
        } else if let value = try? container.decode(RouteResponse.self) {
            self = .typeRouteResponse(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of Route200Response"))
        }
    }
}

// Broken generated code
//@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
//extension Route200Response: Identifiable {}
