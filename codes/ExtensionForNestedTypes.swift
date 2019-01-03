// Extension for Nested Types

// The result is quite nice. Not only can we group constants,
// avoiding literals that are scattered throughout the
// codebase, we also namespace the constants. In other words,
// the constants are easy to remember and make sense.

extension Service {
    enum Keys {
        static let apiKey = "asnjh12312uqw212sdg"
    }
}

extension UserDefaults {
    enum Keys {
        static let schedule = "schedule"
    }
}

extension ViewController {
    enum EventKeys {
        static let succesCheckout = "succesCheckout"
        static let failCheckout = "failCheckout"
    }
}