// Half-Open Range Operator

// The half-open range operator (a..<b) defines a range
// that runs from a to b, but doesn’t include b. It’s
// said to be half-open because it contains its first
// value, but not its final value. As with the closed
// range operator, the value of a must not be greater
// than b. If the value of a is equal to b, then the
// resulting range will be empty.

// Half-open ranges are particularly useful when you work
// with zero-based lists such as arrays, where it’s useful
// to count up to (but not including) the length of the list:

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack