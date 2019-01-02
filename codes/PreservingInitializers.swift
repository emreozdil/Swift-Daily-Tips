// Preserving Initializers

struct Person {
    // MARK: - Properties

    let first: String
    let last: String
}

extension Person {
    // MARK: - Initialization

    init(dictionary: [String: String]) {
        self.first = dictionary["first"] ?? "Emre"
        self.last = dictionary["last"] ?? "Ozdil"
    }
}