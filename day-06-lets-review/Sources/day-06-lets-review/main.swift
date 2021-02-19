import Foundation

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
    
    var strArray: [String] = []
    
    for char in string {
        strArray.append(String(char))
    }

    var firstStringEvens: String = ""
    var firstStringOdds: String = ""

    for i in 0..<strArray.count {
        if i % 2 == 0 {
            firstStringEvens.append(strArray[i])
        } else {
            firstStringOdds.append(strArray[i])
        }
    }
    print(firstStringEvens + " " + firstStringOdds)
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}

