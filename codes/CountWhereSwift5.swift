// count(where:) Swift 5.0

// SE-0220 introduces a new count(where:) method
// that performs the equivalent of a filter() and
// count in a single pass. This saves the creation
// of a new array that gets immediately discarded,
// and provides a clear and concise solution to
// a common problem.

let scores = [100, 80, 85]
let passCount = scores.count { $0 < 90 }