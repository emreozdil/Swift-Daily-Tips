// Omitting Argument Labels
// If you don’t want an argument label for a parameter, write an underscore
// (_) instead of an explicit argument label for that parameter.

func awesomeFunc(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
awesomeFunc(1, secondParameterName: 2)

// Example
func multiply(_ firstNumber: Int, _ secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}

let result = multiply(4, 7)