import XCTest
import class Foundation.Bundle

final class day_07_arraysTests: XCTestCase {
    func testCases() throws {

        // Some of the APIs that we use below are available in macOS 10.13 and above.
        guard #available(macOS 10.13, *) else {
            return
        }

        guard let testDataInputArray = Bundle.module.urls(forResourcesWithExtension: "txt", subdirectory: "TestsData/Input") else {
          print("⛔️ Unable to access test case data.")
          return
        }
      
        guard let testDataOutputArray = Bundle.module.urls(forResourcesWithExtension: "txt", subdirectory: "TestsData/Output") else {
          print("⛔️ Unable to access test case data.")
          return
        }
      
        for n in 0..<testDataInputArray.count {
          
          print("⚠️ Testing \(testDataInputArray[n].lastPathComponent)")
          
          let stdin = FileHandle(forReadingAtPath: testDataInputArray[n].path)
          
          let fooBinary = productsDirectory.appendingPathComponent("day-07-arrays")

          let process = Process()
          process.executableURL = fooBinary

          let pipe = Pipe()
          process.standardInput = stdin
          process.standardOutput = pipe
          
          try? process.run()
          process.waitUntilExit()

          let data = pipe.fileHandleForReading.readDataToEndOfFile()
          let output = String(data: data, encoding: .utf8)?.trimmingCharacters(in: .whitespacesAndNewlines)
          
          let matchingOutputFileIndex = testDataOutputArray.firstIndex { $0.lastPathComponent == testDataInputArray[n].lastPathComponent }
          
          let expectedOutput = try? String(contentsOf: testDataOutputArray[matchingOutputFileIndex!]).trimmingCharacters(in: .whitespacesAndNewlines)

          XCTAssertEqual(output, expectedOutput)
          
        }
      



    }

    /// Returns path to the built products directory.
    var productsDirectory: URL {
      #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
      #else
        return Bundle.main.bundleURL
      #endif
    }

    static var allTests = [
        ("testCases", testCases),
    ]
}
