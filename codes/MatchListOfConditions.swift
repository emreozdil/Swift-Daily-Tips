// Trick to check list of equal conditions on any type
// that confirm Equatable protocol.

// Instead of multiple conditions like this:
// if string == "One" || string == "Two" || string == "Three" || string == "Four" {
//     print("Found item!")
// }

// EquatableValueSequence used by any(of:)
struct EquatableValueSequence<T: Equatable> {
    static func ==(lhs: EquatableValueSequence<T>, rhs: T) -> Bool {
        return lhs.values.contains(rhs)
    }
    
    static func ==(lhs: T, rhs: EquatableValueSequence<T>) -> Bool {
        return rhs == lhs
    }
    
    fileprivate let values: [T]
}

// matching a value against a list of candidates
func any<T: Equatable>(of values: T...) -> EquatableValueSequence<T> {
    return EquatableValueSequence(values: values)
}

// initial values
let int = 4
let string = "Three"

// You can now do:
if string == any(of: "One", "Two", "Three", "Four", "Five") {
    print("Found it: \(string)")
}

if int == any(of: 1, 2, 3, 4, 5) {
    print("Found it: \(int)")
}