import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_8_dicctionaries_and_mapsTests.allTests),
    ]
}
#endif
