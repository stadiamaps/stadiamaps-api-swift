//
// MatrixCostingModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum MatrixCostingModel: String, Codable, CaseIterable {
    case auto = "auto"
    case bus = "bus"
    case hov = "hov"
    case taxi = "taxi"
    case truck = "truck"
    case bicycle = "bicycle"
    case bikeshare = "bikeshare"
    case motorScooter = "motor_scooter"
    case motorcycle = "motorcycle"
    case pedestrian = "pedestrian"
}
