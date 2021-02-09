import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(day_01_data_typesTests.allTests),
    ]
}
#endif
