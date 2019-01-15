// Remove element by the instances in an array

public extension Array where Element: Equatable {
    @discardableResult
    public mutating func remove(element: Element) -> Index? {
        guard let index = index(of: element) else { return nil }
        remove(at: index)
        return index
    }

    @discardableResult
    public mutating func remove(elements: [Element]) -> [Index] {
        return elements.flatMap { remove(element: $0) }
    }
}

let array = ["foo", "bar"]
array.remove(element: "foo")
array // ["bar"]