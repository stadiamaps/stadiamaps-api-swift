import StadiaMaps
import XCTest

final class GeospatialAPIIntegrationTests: IntegrationXCTestCase {

    let seoul = Coordinate(lat: 37.56, lon: 126.99)

    func testTZ() async throws {
        let res = try await GeospatialAPI.tzLookup(lat: seoul.lat, lng: seoul.lon)

        XCTAssertEqual(res.tzId, "Asia/Seoul")
    }

    func testElevation() async throws {
        let req = HeightRequest(id: "height", shape: [seoul])
        let res = try await GeospatialAPI.elevation(heightRequest: req)

        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.height?.count, 1)
        XCTAssertTrue(res.height?.first ?? -1 > 0)
        XCTAssertEqual(req.shape, res.shape)
    }

    func testElevationWithRanges() async throws {
        let req = HeightRequest(id: "height", shape: [seoul], range: true)
        let res = try await GeospatialAPI.elevation(heightRequest: req)

        XCTAssertEqual(req.id, res.id)
        XCTAssertEqual(res.rangeHeight?.count, 1)
        XCTAssertEqual(res.rangeHeight?.first?.first, 0)
        XCTAssertTrue(res.rangeHeight?.first?[1] ?? 0 > 0)
        XCTAssertEqual(req.shape, res.shape)
    }

}
