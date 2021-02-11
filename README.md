# 30 Days of Code

Swift solutions to HackeRank's 30 days of code. 

### How to Run
- clone the repo
- `cd` into a chosen day's directory

**Note**: Each day is it's own executable and can be tested in 1 of 4 ways.

#### Xcode (Debug Area)
1. `open Package.swift` from the command line
2. `command + r` build and run 
3. enter input values into debug area
4. compare stdout to expected output
  
#### Xcode (Xctest)
1. `open Package.swift`
2. `command + b` to build, `command + u` to run test suite 
3. inputs & expected output will be pulled from `TestsData` folder
4. verify all tests have passed

#### Command Line (stdin/stdout)
1. `swift build`
2. `swift run`
3. enter input values into command line
4. compare stdout to expected output

#### Command Line (Xctest)
1. `swift build`
2. `swift test`
3. inputs & expected output will be pulled from `TestsData` folder
4. verify all tests have passed
