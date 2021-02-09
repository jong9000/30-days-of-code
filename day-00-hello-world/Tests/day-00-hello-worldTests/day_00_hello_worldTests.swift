import XCTest
import class Foundation.Bundle

final class day_00_hello_worldTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

        // Some of the APIs that we use below are available in macOS 10.13 and above.
        guard #available(macOS 10.13, *) else {
            return
        }
              
        guard let path = Bundle.module.path(forResource: "test00", ofType: "txt") else {
          print("resource not available")
          return
        }
      
        let stdin = FileHandle(forReadingAtPath: path)
              
        // gets path to binary to run
        let fooBinary = productsDirectory.appendingPathComponent("day-00-hello-world")
        
        // creates Process intance and adds URL of executable
        let process = Process()
        process.executableURL = fooBinary

        // creates Pipe object and assigns stdout to pipe
        let pipe = Pipe()
        process.standardInput = stdin
        process.standardOutput = pipe
      
        // runs executable
        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        var output = String(data: data, encoding: .utf8)!
        output = output.trimmingCharacters(in: .newlines)

        let expectedOutput = """
                             Hello, World.
                             Welcome to 30 Days of Code!
                             """
      
        XCTAssertEqual(output, expectedOutput)
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
        ("testExample", testExample),
    ]
}
