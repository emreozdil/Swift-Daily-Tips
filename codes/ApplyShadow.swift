extension CALayer {
    func applyShadow(color: UIColor, alpha: Float, x: CGFloat, y: CGFloat, blur: CGFloat, spread: CGFloat)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}

// Usage Example 1
private func setupShadow() {
    contentView.layer.applyShadow(color: UIColor.black, alpha: 0.45, x: 0, y: 2, blur: 2.5, spread: 0)
}

// Usage Example 2
fileprivate lazy var mainView : UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.layer.cornerRadius = 4.0
    view.layer.applyShadow(color: UIColor.black, alpha: 0.35, x: 0, y: 1, blur: 4, spread: 0)
    self.view.addSubview(view)
    return view
}()
