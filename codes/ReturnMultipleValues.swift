// Use a tuple to make a compound value—for example, to return
// multiple values from a function. The elements of a tuple
// can be referred to either by name or by number.

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    guard let min = scores.min(), let max = scores.max() else {
        fatalError("Scores is nil")
    }
    
    let sum = scores.reduce(0) { $0 + $1 }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.max)
// Prints "100"
print(statistics.2)
// Prints "120"