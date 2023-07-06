import StadiaMaps
import XCTest

class IntegrationXCTestCase: XCTestCase {

    override func setUpWithError() throws {
        let apiKey = ProcessInfo.processInfo.environment["API_KEY"]
        try XCTSkipIf(apiKey == nil, "Skipping integration tests; missing API_KEY environment variable")

        StadiaMapsAPI.customHeaders = ["Authorization": "Stadia-Auth \(apiKey!)"]
    }

}
