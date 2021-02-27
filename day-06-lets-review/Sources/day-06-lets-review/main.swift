import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
  
    // Print the even-indexed characters
    // Write your code here
    let strArray = Array(string)
    var evenChars = ""
    var oddChars = ""
    
    for i in 0..<strArray.count {
        if i % 2 == 0 {
            evenChars += String(strArray[i])
        } else {
            oddChars += String(strArray[i])
        }
    }
    
    print(evenChars, terminator: "")
    // Print a space
    print(" ", terminator: "")
  
    // Print the odd-indexed characters
    // Write your code here
    print(oddChars, terminator: "")
    // Print a newline
    print()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}

