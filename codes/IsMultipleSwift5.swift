// isMultiple Swift 5.0

// SE-0225 adds an isMultiple(of:) method to integers,
// allowing us to check whether one number is a multiple
// of another in a much clearer way than using the
// division remainder operation, %.

let rowNumber = 7

if rowNumber.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}