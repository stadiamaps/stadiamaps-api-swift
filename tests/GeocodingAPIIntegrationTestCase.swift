import StadiaMaps
import XCTest

final class GeocodingAPIIntegrationTestCase: IntegrationXCTestCase {
    let address = "Põhja pst 27"

    func testAutocomplete() async throws {
        let res = try await GeocodingAPI.autocomplete(text: address)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, .address)
    }

    func testSearch() async throws {
        let res = try await GeocodingAPI.search(text: address)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, .address)
    }

    func testStructuredSearch() async throws {
        let res = try await GeocodingAPI.searchStructured(address: address, region: "Harju", country: "EE")
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, .address)
    }

    func testReverse() async throws {
        let res = try await GeocodingAPI.reverse(pointLat: 59.444351, pointLon: 24.750645)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, .address)
    }

    func testReverseUncommonLayer() async throws {
        let res = try await GeocodingAPI.reverse(pointLat: 24.750645, pointLon: 59.444351)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.layer, .marinearea)
    }

    func testPlace() async throws {
        let res = try await GeocodingAPI.place(ids: ["openstreetmap:address:way/109867749"])
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, .address)
    }
}
