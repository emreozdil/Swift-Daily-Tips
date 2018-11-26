// Using this function allows you to add a new unique observer for notifications.
// This deals with the problem that one instance could be added as observer multiple times.

extension NotificationCenter {
	func addUniqueObserver(_ observer: Any, selector: Selector, name: NSNotification.Name, object: Any?) {
		NotificationCenter.default.removeObserver(observer, name: name, object: object)
		NotificationCenter.default.addObserver(observer, selector: selector, name: name, object: object)
	}
}
