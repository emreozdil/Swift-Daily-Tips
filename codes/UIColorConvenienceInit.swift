extension UIColor {
    // UIColor(r: 95, g: 199, b: 220)
    convenience init(r: Int, g: Int, b: Int) {
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: 1.0)
    }
    // UIColor(hex: 0x5fc7dc)
    convenience init(hex:Int) {
        self.init(r:(hex >> 16) & 0xff, g:(hex >> 8) & 0xff, b:hex & 0xff)
    }
}