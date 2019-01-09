// Support 'less than' operator in compilation conditions Swift 5.0

// Proposal: SE-0224
// This proposal augments the functionality implemented for proposal SE-0020
// with the introduction of a new valid operator in compilation condition:
// "<". The aim is that the syntax #if swift(<4.2) is supported by the language.

#if !swift(>=4.2)
// This will only be executed if the Swift version is less than 4.2.
#endif

#if !compiler(>=4.2)
// This will only be executed if the Swift compiler version is less than 4.2.
#endif

#if swift(<4.2)
// This will only be executed if the Swift version is less than 4.2.
#endif

#if compiler(<4.2)
// This will only be executed if the Swift compiler version is less than 4.2.
#endif