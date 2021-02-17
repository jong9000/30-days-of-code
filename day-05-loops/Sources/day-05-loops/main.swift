import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var multiple = 1

for _ in n...n + 9 {
  print("\(n) x \(multiple) = \(n * multiple)")
  multiple += 1
}
