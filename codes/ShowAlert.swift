
// You can implement a method as an extension to base UIViewController class
// to show information alert to users with a simple Okay button.
extension UIViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Okay", comment: ""), style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
