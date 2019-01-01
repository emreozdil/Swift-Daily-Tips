// Protocol Conformance

// The Swift Programming Language mentions that extensions
// can be used to conform an existing type to a protocol.
// While this isn't new or revolutionary, it can also help
// you keep your code organized.
// Take the UITableViewDataSource and UITableViewDelegate
// protocols as an example. This example may look familiar.
// This is fine, but it results in a lengthy class
// implementation that can become difficult to navigate over time.

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // ...
}

// You can keep your code organized by creating an extension for
// each protocol the type conforms to.

class ViewController: UIViewController {
    // ...
}

extension ViewController: UITableViewDataSource {
    // ...
}

extension ViewController: UITableViewDelegate {
    // ...
}