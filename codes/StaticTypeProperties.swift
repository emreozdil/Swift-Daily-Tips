// Static - Type Properties

// The main benefit here is, that you no longer have to create an instance to access properties.
// This 'Constant' enum has static type properties.
// You could also use struct instead of the enum, but this allows for the creation of instances (unless the init is private).
// By using the enum without a case you prevent the unintentional creation of instances.

enum Constant {
    static let baseUrl = "https://github.com/MobileTipsters/Swift-Daily-Tips/"
    static let backgroundColor = UIColor.lightGray
}

let githubRepo = URL(string: Constant.baseUrl)
view.backgroundColor = Constant.backgroundColor
