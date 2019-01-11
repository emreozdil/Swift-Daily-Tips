// Handling future enum cases Swift 5.0

// SE-0192 adds the ability to distinguish between enums that are fixed and enums
// that might change in the future.
// With the @unknown attribute we can now distinguish between two subtly different
// scenarios: “this default case should be run for all other cases because I don’t
// want to handle them individually,” and “I want to handle all cases individually,
// but if anything comes up in the future use this rather than causing an error.”

enum PasswordError: Error {
    case short
    case obvious
    case simple
}

func showOld(error: PasswordError) {
    switch error {
    case .short:
        print("Your password was too short.")
    case .obvious:
        print("Your password was too obvious.")
    default:
        print("Your password was too simple.")
    }
}

func showNew(error: PasswordError) {
    switch error {
    case .short:
        print("Your password was too short.")
    case .obvious:
        print("Your password was too obvious.")
    @unknown default:
        print("Your password wasn't suitable.")
    }
}