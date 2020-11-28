import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(users_api_protoTests.allTests),
    ]
}
#endif
