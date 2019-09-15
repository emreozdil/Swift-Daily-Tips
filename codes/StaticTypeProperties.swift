// Static - Type Properties

// This 'Constant' enum has static type properties.
// The main benefit is, that you no longer have to create an instance to access properties.
// You could also use a struct instead of the enum, but this allows for the creation of instances (unless the init is private).
// By using an enum without a case you prevent the unintentional creation of instances.

enum Constant {
    static let baseUrl = "https://github.com/MobileTipsters/Swift-Daily-Tips/"
    static let backgroundColor = UIColor.lightGray
}

let githubRepo = URL(string: Constant.baseUrl)
view.backgroundColor = Constant.backgroundColor
