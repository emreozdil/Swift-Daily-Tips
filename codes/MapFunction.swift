// Returns an array containing the results of mapping
// the given closure over the sequence's elements.
let cast = ["Vivien", "Marlon", "Kim", "Karl"]
let lowercaseNames = cast.map { $0.lowercased() }
// ["vivien", "marlon", "kim", "karl"]
let letterCounts = cast.map { $0.count }
// [6, 6, 3, 4]