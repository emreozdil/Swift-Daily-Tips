// Int and String Description of Bool

extension Bool {
    var int: Int {
        return self ? 1 : 0
    }

    var string: String {
        return description
    }
}