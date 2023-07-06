import XCTest
@testable import StadiaMaps

class IntegrationXCTestCase: XCTestCase {
    override func setUpWithError() throws {
        let apiKey = ProcessInfo.processInfo.environment["API_KEY"]
        try XCTSkipIf(apiKey == nil, "Skipping integration tests; missing API_KEY environment variable")

        // This would be easy to screw up given how XCTest works
        XCTAssertEqual(StadiaMapsAPI.basePath, "https://api.stadiamaps.com")

        StadiaMapsAPI.customHeaders = ["Authorization": "Stadia-Auth \(apiKey!)"]
    }

    override func tearDownWithError() throws {
        StadiaMapsAPI.basePath = "https://api.stadiamaps.com"
        StadiaMapsAPI.customHeaders = [:]
        StadiaMapsAPI.credential = nil
        StadiaMapsAPI.requestBuilderFactory = URLSessionRequestBuilderFactory()
        StadiaMapsAPI.apiResponseQueue = .main
    }
}
