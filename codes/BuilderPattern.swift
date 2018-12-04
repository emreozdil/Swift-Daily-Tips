// Builder allows you to create an instance and setting it up in a simple way:

protocol Builder {}

extension Builder {
	public func with(configure: (inout Self) -> Void) -> Self {
		var this = self
		configure(&this)
		return this
	}
}

// We need NSObject to conform to Builder to enable it for all subclasses of it 😊
extension NSObject: Builder {}

private let tableView = UITableView(frame: .zero, style: .plain).with { tableView in
    tableView.backgroundColor = .white
    tableView.separatorColor = .darkGray
    tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 10.0, right: 0)
    tableView.allowsMultipleSelection = true
}
