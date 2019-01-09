// Character Properties Swift 5.0

// Proposal: SE-0221
// String is a collection whose element is Character, which represents an
// extended grapheme cluster (commonly just called “grapheme”). This makes
// Character one of the first types encountered both by newcomers to Swift
// as well as by experienced Swift developers playing around in new
// domains (e.g. scripting). Yet Character exposes little functionality
// other than the ability to order it with respect to other characters,
// and a way to access the raw Unicode scalar values that comprise it.

extension Character {
  @inlinable public var isASCII: Bool { ... }
  @inlinable public var asciiValue: UInt8? { ... }
  public var isWhitespace: Bool { ... }
  public var isNewline: Bool { ... }
  public var isNumber: Bool { ... }
  @inlinable public var isWholeNumber: Bool { ... }
  public var wholeNumberValue: Int? { ... }
  @inlinable public var isHexadecimalDigit: Bool { ... }
  public var hexadecimalDigitValue: Int? { ... }
  public var isLetter: Bool { ... }
  public func uppercased() -> String { ... }
  public func lowercased() -> String { ... }
  @inlinable public var isUppercase: Bool { ... }
  @inlinable public var isLowercase: Bool { ... }
  @inlinable public var isCased: Bool { ... }
  public var isSymbol: Bool { ... }
  public var isMathSymbol: Bool { ... }
  public var isCurrencySymbol: Bool { ... }
  public var isPunctuation: Bool { ... }
}