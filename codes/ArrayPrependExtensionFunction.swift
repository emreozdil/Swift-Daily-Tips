// Array Prepend Extension Function

extension Array {
    mutating func prepend(_ newElement: Element) {
        insert(newElement, at: 0)
    }
}

[2, 3, 4, 5].prepend(1) // [1, 2, 3, 4, 5]
["e", "l", "l", "o"].prepend("h") // ["h", "e", "l", "l", "o"]