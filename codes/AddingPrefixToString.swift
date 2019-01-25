// Adding a prefix to a string

extension String {
    func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) { return self }
        return "\(prefix)\(self)"
    }
}  

let url = "www.hackingwithswift.com"
let fullURL = url.withPrefix("https://")