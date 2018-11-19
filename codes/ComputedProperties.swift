// In addition to stored properties, classes, structures, and enumerations
// can define computed properties, which do not actually store a value.

class Person {
    var name: String?
    var surname: String?
    // Computed Property
    var fullname: String? {
        guard let name = name, let surname = surname else { return nil }
        return "\(name) \(surname)"
    }
}