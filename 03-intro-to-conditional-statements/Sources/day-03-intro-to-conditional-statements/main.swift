import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

if N % 2 != 0 {
  print("Weird")
}

if N % 2 == 0 && 2 <= N && N <= 5 {
  print("Not Weird")
}

if N % 2 == 0 && 6 <= N && N <= 20 {
  print("Weird")
}

if N % 2 == 0 && N > 20 {
  print("Not Weird")
}
