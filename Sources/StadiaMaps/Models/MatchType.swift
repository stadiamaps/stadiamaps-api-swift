//
// MatchType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public enum MatchType: String, Codable, CaseIterable {
    case exact
    case interpolated
    case fallback
}
