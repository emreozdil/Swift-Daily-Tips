// Sum Function for Numeric Collection

extension Collection where Element: Numeric {
    func sum() -> Element {
        return self.reduce(0, +)
    }
}

[3, 4, 6].sum() // 13
[3.4, 6.2, 7.3].sum() // 16.9