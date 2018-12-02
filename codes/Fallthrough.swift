// Fallthrough
// In Swift, switch statements don’t fall through the bottom of each case
// and into the next one. That is, the entire switch statement completes
// its execution as soon as the first matching case is completed.
// If you need C-style fallthrough behavior, you can opt in to this
// behavior on a case-by-case basis with the fallthrough keyword.

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// Prints "The number 5 is a prime number, and also an integer."
