// Variadic Parameters
// A variadic parameter accepts zero or more values of a specified type.
// You use a variadic parameter to specify that the parameter can be
// passed a varying number of input values when the function is called.
// Write variadic parameters by inserting three period characters (...)
// after the parameter’s type name.

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers