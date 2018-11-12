// If you want a function to modify a parameter’s value, and
// you want those changes to persist after the function call
// has ended, define that parameter as an in-out parameter instead.

// You write an in-out parameter by placing the inout keyword right
// before a parameter’s type. An in-out parameter has a value that
// is passed in to the function, is modified by the function, and
// is passed back out of the function to replace the original value.

var number = 12

func changeNumber(localNumber: inout Int) {
    localNumber += 3
}

changeNumber(localNumber: &number)
print(number)
// Prints: 15
