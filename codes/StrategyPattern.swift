// Strategy Pattern

// In Strategy pattern, a class behavior or its algorithm can be changed
// at run time. This type of design pattern comes under behavior pattern.
// In Strategy pattern, we create objects which represent various strategies
// and a context object whose behavior varies as per its strategy object.
// The strategy object changes the executing algorithm of the context object.

protocol Fly {
  func fly()
}

class Bird: Fly {
  func fly() {
    print("Spread Wings")
  }
}

class Plane: Fly {
  func fly() {
    print("We are Turkish Airlines, We are Globally Yours")
  }
}

let flyableObject: Fly = Plane()
flyableObject.fly()