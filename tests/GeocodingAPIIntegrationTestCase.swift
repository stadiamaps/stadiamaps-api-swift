import StadiaMaps
import XCTest

final class GeocodingAPIIntegrationTestCase: IntegrationXCTestCase {
    let address = "Põhja pst 27"

    func testAutocompleteV1() async throws {
        let res = try await GeocodingAPI.autocompleteV1(text: address)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, "address")
    }

    func testAutocompleteV2() async throws {
        let res = try await GeocodingAPI.autocompleteV2(text: address)
        XCTAssert(!res.features.isEmpty)
        XCTAssertNil(res.features.first?.properties.context)
        XCTAssertEqual(res.features.first?.properties.layer, "address")
    }

    func testSearch() async throws {
        let res = try await GeocodingAPI.searchV1(text: address)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, "address")
    }

    func testStructuredSearch() async throws {
        let res = try await GeocodingAPI.searchStructuredV1(address: address, region: "Harju", country: "EE")
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, "address")
    }

    func testReverse() async throws {
        let res = try await GeocodingAPI.reverseV1(pointLat: 59.444351, pointLon: 24.750645, layers: [.address, .localadmin])
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
    }

    func testReverseUncommonLayer() async throws {
        let res = try await GeocodingAPI.reverseV1(pointLat: 24.750645, pointLon: 59.444351)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.layer, "marinearea")
    }

    func testPlace() async throws {
        let res = try await GeocodingAPI.placeDetailsV1(ids: ["openstreetmap:address:way/109867749"])
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, "address")
    }

    func testBulk() async throws {
        let res = try await GeocodingAPI.searchBulkV1(bulkRequest: [
            BulkRequest(endpoint: .slashV1SlashSearch, query: .typeSearchQuery(SearchQuery(text: address))),
            BulkRequest(endpoint: .slashV1SlashSearchSlashStructured, query: .typeSearchStructuredQuery(SearchStructuredQuery(address: address, country: "EE", layers: [.address, .coarse]))),
        ])

        XCTAssertEqual(res.count, 2)
        for rec in res {
            XCTAssertEqual(rec.status, 200)
            XCTAssertEqual(rec.response?.features.first?.properties?.country, "Estonia")
            XCTAssertEqual(rec.response?.features.first?.properties?.layer, "address")
        }
    }
}
