// Generic Functions can work with any type.
// The generic function uses a placeholder type name
// called T, in this case) instead of an actual type name
// (such as Int, String, or Double). The placeholder type name
// doesn’t say anything about what T must be, but it does
// say that both a and b must be of the same type T, whatever T
// represents. The actual type to use in place of T is determined
// each time the swapTwoValues(_:_:) function is called.

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoValues(&someInt, &anotherInt)
// someInt is now 107, and anotherInt is now 3

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
// someString is now "world", and anotherString is now "hello"