// - distinct(by:) function

struct Student {
  let id: Int
}

let students: [Student] = [1, 2, 2, 3, 3, 3].map({ Student(id: $0) })
// contents = student1, student2, student2, student3, student3, student3

let uniqueStudents = students.distinct(by: { $0.id }) // Distinct by id.
// contents = student1, student2, student3

// - Definition

public extension Sequence {
  
  /// Returns a sequence that contains no duplicate entries according to the
  /// generic hash and equality comparisons on the keys returned by the given
  /// key-generating block. If an element occurs multiple times in the sequence
  /// then the later occurrences are discarded.
  ///
  /// - Parameter keyBlock: Key generating block.
  public func distinct<Key: Hashable>(by keyBlock: (Iterator.Element) -> Key) -> [Iterator.Element] {
    var seen: [Key: Bool] = [:]
    return self.filter {
      seen.updateValue(true, forKey: keyBlock($0)) == nil
    }
  }
}
