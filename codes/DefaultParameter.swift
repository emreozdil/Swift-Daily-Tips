/*
 You can define a default value for any parameter
 in a function by assigning a value to the parameter
 after that parameter’s type. If a default value is
 defined, you can omit that parameter when calling the function.
 */
func saveToDisk(forced: Bool = false) {
    // save to disk logic
}

let card = Card(with: "Ali")
card.saveToDisk() // saveToDisk func will consider forced is false
card.saveToDisk(forced: true) // func will force
