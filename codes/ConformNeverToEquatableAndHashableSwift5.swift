// Conform Never to Equatable and Hashable Swift 5.0

// Proposal: SE-0215
// Never is very useful for representing impossible code.
// Most people are familiar with it as the return type of
// functions like fatalError, but Never is also useful
// when working with generic classes.
// The standard library should add Equatable and Hashable
// implementations for Never:

extension Never: Equatable {
  public static func == (lhs: Never, rhs: Never) -> Bool {
    switch (lhs, rhs) {
    }
  }
}

extension Never: Hashable {
  public func hash(into hasher: inout Hasher) {
  }
}