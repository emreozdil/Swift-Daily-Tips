// Search Bar Text Field

extension UISearchBar {
    func searchBarTextField() -> UITextField? {
        for view in subviews {
            for subview in view.subviews {
                if let textField = subview as? UITextField {
                    return textField
                }
            }
        }
        return nil
    }
}