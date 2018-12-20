// User Initiated

// Work that the user has initiated and requires immediate results,
// such as opening a saved document or performing an action when the
// user clicks something in the user interface. The work is required
// in order to continue user interaction. Focuses on responsiveness
// and performance.

DispatchQueue.global(qos: .userInitiated).async {
    if let url = URL(string: urlString) {
        if let data = try? Data(contentsOf: url) {
            self.parse(json: data)
            return
        }
    }
}
