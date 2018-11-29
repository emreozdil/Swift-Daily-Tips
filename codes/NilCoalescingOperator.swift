// Nil-Coalescing Operator

// The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a
// value, or returns a default value b if a is nil. The expression a is always of
// an optional type. The expression b must match the type that is stored inside a.

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is not nil, so colorNameToUse is set to "green"