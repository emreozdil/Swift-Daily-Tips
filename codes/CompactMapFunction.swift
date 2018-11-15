// Use compactMap function to receive an array of nonoptional values
// when your transformation produces an optional value.
let possibleNumbers = ["1", "2", "three", "///4///", "5", "Fish"]
let mapped: [Int?] = possibleNumbers.map { Int($0) }
// [1, 2, nil, nil, 5, nil]
let compactMapped: [Int] = possibleNumbers.compactMap { Int($0) }
// [1, 2, 5]
