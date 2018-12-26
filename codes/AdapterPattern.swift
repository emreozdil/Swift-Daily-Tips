// Adapter Pattern

// Adapter is a structural design pattern that allows objects with incompatible
// interfaces to work together. In other words, it transforms the interface of
// an object to adapt it to a different object.

protocol Jumping {
    func jump()
}

class Cat: Jumping {
    func jump() { print("Pounces") }
}

// MARK: - ADAPTEE
class Frog {
    func leap() { print("Leaps") }
}

// MARK: - ADAPTER
class FrogAdapter: Jumping {
    private let frog = Frog()
    func jump() { frog.leap() }
}

let cat = Cat()
let frog = FrogAdapter()
var animals: [Jumping] = [cat, frog]

func jumpAll(animals: [Jumping]) {
    for animal in animals {
        animal.jump()
    }
}