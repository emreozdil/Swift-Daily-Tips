// compactMapValues to Dictionary Swift 5.0

// SE-0218 adds a new compactMapValues() method to dictionaries,
// bringing together the compactMap() functionality from arrays
// (“transform my values, unwrap the results, then discard
// anything that’s nil”) with the mapValues() method from
// dictionaries (“leave my keys intact but transform my values”).

let d: [String: String?] = ["a": "1", "b": nil, "c": "3"]
let r4 = d.compactMapValues({$0})
// r4 == ["a": "1", "c": "3"]

let d: [String: String] = ["a": "1", "b": "2", "c": "three"]
let r5 = d.compactMapValues(Int.init)
// r5 == ["a": 1, "b": 2]