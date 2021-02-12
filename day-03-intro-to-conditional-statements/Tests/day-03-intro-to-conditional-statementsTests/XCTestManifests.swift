import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(day_03_intro_to_conditional_statementsTests.allTests),
    ]
}
#endif
