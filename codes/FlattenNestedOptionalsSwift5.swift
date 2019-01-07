// Flatten nested optionals resulting from 'try?' Swift 5.0

// SE-0230 modifies the way try? works so that nested optionals are flattened
// to become regular optionals. This makes it work the same way as optional
// chaining and conditional typecasts, both of which flatten optionals in 
// earlier Swift versions.

// In Swift 5, try? someExpr() will mirror the behavior of foo?.someExpr():

// If someExpr() produces a non-optional value, it will be wrapped in an Optional.
// If someExpr() produces an Optional, then no additional optional-ness is added.
// This results in the following changes to the type of a try? expression:

// Swift 4: 'Int??'
// Swift 5: 'Int?'
let result = try? database?.countOfRows(matching: predicate)


// Swift 4: 'String??'
// Swift 5: 'String?'
let myString = try? String(data: someData, encoding: .utf8)
    
// Swift 4: '[String: Any]??'
// Swift 5: '[String: Any]?'
let dict = try? JSONSerialization.jsonObject(with: data) as? [String: Any]