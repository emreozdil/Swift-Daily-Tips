// Mutating Function
// If you need to modify the properties of your structure or enumeration within
// a particular method, you can opt in to mutating behavior for that method.

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

// Cannot use mutating member on immutable value: 'point' is a 'let' constant
// let point = Point(x: 1.0, y: 1.0)
// point.moveBy(x: 2.0, y: 3.0)

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
// Prints "The point is now at (3.0, 4.0)"