// C style For Loop Using Stride

/// Returns a sequence from a starting value to, but not including, an end
/// value, stepping by the specified amount.
///
/// You can use this function to stride over values of any type that conforms
/// to the `Strideable` protocol, such as integers or floating-point types.
/// Starting with `start`, each successive value of the sequence adds `stride`
/// until the next value would be equal to or beyond `end`.

for radians in stride(from: 0.0, to: .pi * 2, by: .pi / 2) {
    let degrees = Int(radians * 180 / .pi)
    print("Degrees: \(degrees), radians: \(radians)")
}
// Degrees: 0, radians: 0.0
// Degrees: 90, radians: 1.5707963267949
// Degrees: 180, radians: 3.14159265358979
// Degrees: 270, radians: 4.71238898038469
