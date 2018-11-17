// Types that conform to the `CaseIterable` protocol are typically
// enumerations without associated values. When using a `CaseIterable`
// type, you can access a collection of all of the type's cases
// by using the type's`allCases` property.

enum CompassDirection: CaseIterable {
    case north, south, east, west
}

print("There are \(CompassDirection.allCases.count) directions.")

for direction in CompassDirection.allCases {
    print("I want to go \(direction).")
}
