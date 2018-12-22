// User Interactive

// Work that is interacting with the user, such as operating
// on the main thread, refreshing the user interface, or
// performing animations. If the work doesn’t happen quickly,
// the user interface may appear frozen. 
// Focuses on responsiveness and performance.

DispatchQueue.global(qos: .userInteractive).async {
    self.fadeInNewImage(overlayImage)
    self.tableView.reloadData()
}
