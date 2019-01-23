// Word Count Function

import Foundation

extension String {
    var wordCount: Int {
        let regex = try? NSRegularExpression(pattern: "\\w+")
        return regex?.numberOfMatches(in: self, range: NSRange(location: 0, length: self.utf16.count)) ?? 0
    }
}

let phrase = "The rain in Spain"
print(phrase.wordCount) // 4
