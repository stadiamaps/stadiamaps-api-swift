//
//  GeocodingAPIIntegrationTests.swift
//  
//
//  Created by Ian Wagner on 2023-07-06.
//

import StadiaMaps
import XCTest

final class GeocodingAPIIntegrationTests: IntegrationXCTestCase {
    let address = "Põhja pst 27a"

    func testAutocomplete() async throws {
        let res = try await GeocodingAPI.autocomplete(text: address)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, .address)
    }

}
