import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(scheduled_lambda_protoTests.allTests),
    ]
}
#endif
