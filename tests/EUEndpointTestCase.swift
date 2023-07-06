//
//  EUEndpointTests.swift
//
//
//  Created by Ian Wagner on 2023-07-06.
//

import StadiaMaps
import XCTest

final class EUEndpointTestCase: IntegrationXCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()

        StadiaMapsAPI.basePath = "https://api-eu.stadiamaps.com"
    }

    func testAutocomplete() async throws {
        let res = try await GeocodingAPI.autocomplete(text: "Põhja pst 27a")
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, .address)
    }
}
