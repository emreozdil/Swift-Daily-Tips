extension UILabel {
    // MARK: - Static Factory Method for Title
    static func initForTitle() -> UILabel {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        label.textColor = .darkGray
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.75
        return label
    }

    // MARK: - Static Factory Method for Description
    static func initForDescription() -> UILabel {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }
}

class ContentViewController: UIViewController {
    lazy var titleLabel = UILabel.initForTitle()
    lazy var textLabel = UILabel.initForDescription()
}