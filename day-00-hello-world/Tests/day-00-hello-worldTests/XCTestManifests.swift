import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(day_00_hello_worldTests.allTests),
    ]
}
#endif
