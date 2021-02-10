import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(day_02_operatorsTests.allTests),
    ]
}
#endif
