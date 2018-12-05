extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}

// Add multiple subviews in a single line
view.addSubviews(imageView, slider, view, label)
