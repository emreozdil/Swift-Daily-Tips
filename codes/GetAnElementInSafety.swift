// Get an element in safety.

public extension Collection {
    public subscript(safe index: Index) -> Element? {
        return startIndex <= index && index < endIndex ? self[index] : nil
    }
}

let array = [0, 1, 2]
if let item = array[safe: 2] {
    print(item)
}