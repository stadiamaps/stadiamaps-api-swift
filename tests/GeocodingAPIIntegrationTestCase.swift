import StadiaMaps
import XCTest

final class GeocodingAPIIntegrationTestCase: IntegrationXCTestCase {
    let address = "Põhja pst 27"

    func testAutocompleteV1() async throws {
        let res = try await GeocodingAPI.autocomplete(text: address)
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
        let res = try await GeocodingAPI.search(text: address)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, "address")
    }

    func testStructuredSearch() async throws {
        let res = try await GeocodingAPI.searchStructured(address: address, region: "Harju", country: "EE")
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, "address")
    }

    func testReverse() async throws {
        let res = try await GeocodingAPI.reverse(pointLat: 59.444351, pointLon: 24.750645, layers: [.address, .localadmin])
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
    }

    func testReverseV2() async throws {
        let res = try await GeocodingAPI.reverseV2(pointLat: 59.444351, pointLon: 24.750645, layers: [.address, .localadmin])
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties.context?.iso3166A3, "EST")
    }

    func testReverseUncommonLayer() async throws {
        let res = try await GeocodingAPI.reverse(pointLat: 24.750645, pointLon: 59.444351)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.layer, "marinearea")
    }

    func testReverseUncommonLayerV2() async throws {
        let res = try await GeocodingAPI.reverseV2(pointLat: 24.750645, pointLon: 59.444351)
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties.layer, "marinearea")
    }

    func testPlace() async throws {
        let res = try await GeocodingAPI.placeDetails(ids: ["openstreetmap:address:way/109867749"])
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties?.country, "Estonia")
        XCTAssertEqual(res.features.first?.properties?.layer, "address")
    }

    func testPlaceV2() async throws {
        let res = try await GeocodingAPI.placeDetailsV2(ids: ["openstreetmap:address:way/109867749"])
        XCTAssert(!res.features.isEmpty)
        XCTAssertEqual(res.features.first?.properties.context?.whosonfirst.country?.name, "Estonia")
        XCTAssertEqual(res.features.first?.properties.context?.iso3166A3, "EST")
        XCTAssertEqual(res.features.first?.properties.layer, "address")
    }

    func testBulk() async throws {
        let res = try await GeocodingAPI.searchBulk(bulkRequest: [
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
