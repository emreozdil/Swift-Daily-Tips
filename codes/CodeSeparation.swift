// Code Separation

// We can take this one step further by creating
// a private extension for private behavior.

struct Person {
    // MARK: - Properties

    let first: String
    let last: String
}

// MARK: - Public Functions
extension Person {
    // ...
}

// MARK: - Private Functions
private extension Person {
    // ...
}