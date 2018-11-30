
let names = ["Jack", "Frank", "Jim", "Wrappers"]
// Uses joined to transform the Array to String
let nameString = names.joined()
let nameStringBySeparator = names.joined(separator: ",")
// nameString: JackFrankJimWrappers
// nameStringBySeparator: Jack,Frank,Jim,Wrappers

// Uses split to transform the String with separators to String
let nameArray = nameStringBySeparator.split(separator: ",")
// nameArray: ["Jack", "Frank", "Jim", "Wrappers"]
