// Static - Type Properties

// No longer have to initialize an object to access properties.
// Constant struct contains static type properties

struct Constant {
    static let baseUrl = "https://github.com/MobileTipsters/Swift-Daily-Tips/"
    static let backgroundColor = UIColor.lightGray
}

let githubRepo = URL(string: Constant.baseUrl)
view.backgroundColor = Constant.backgroundColor