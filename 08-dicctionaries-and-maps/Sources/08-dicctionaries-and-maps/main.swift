import Foundation

guard let n = Int(readLine()!)
else { fatalError("Bad input") }

var nameDictionary = [String : String]()

for _ in 1...n {
    let a = readLine()!
    let b = a.split(separator: " ")
    nameDictionary[String(b[0])] = String(b[1])
}

while let input = readLine() {
    if let phoneNumber = nameDictionary[input] {
        print("\(input)=\(phoneNumber)")
    } else {
        print("Not found")
    }
}
