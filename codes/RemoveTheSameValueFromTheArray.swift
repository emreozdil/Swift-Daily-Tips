// Remove the same value from the array

public extension Array where Element: Hashable {
    public mutating func unify() {
        self = unified()
    }
}

public extension Collection where Element: Hashable {
    public func unified() -> [Element] {
        return reduce(into: []) {
            if !$0.contains($1) {
                $0.append($1)
            }
        }
    }
}

var array = [1, 2, 3, 3, 2, 1, 4]
array.unify() // [1, 2, 3, 4]