import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(day_08_dictionaries_and_mapsTests.allTests),
    ]
}
#endif
