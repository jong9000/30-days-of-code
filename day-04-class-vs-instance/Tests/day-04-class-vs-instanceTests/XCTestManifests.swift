import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(day_04_class_vs_instanceTests.allTests),
    ]
}
#endif
