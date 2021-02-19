import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(day_06_lets_reviewTests.allTests),
    ]
}
#endif
