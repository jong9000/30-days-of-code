import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_8_dictionaries_and_mapsTests.allTests),
    ]
}
#endif
