// Did you never asked how to add stored properties to extensions in Swift? ;)
// One of the benfits of Objective C and key-value coding feature code 
// is still valid in Swift is you can we could add stored values to an object at runtime.
// Say welcome to associated object in Swift.

import Foundation

class MyClass {
}

// We declared the type of key as Void?, which means a pointer to anything
private var key: Void?

extension MyClass {
    var title: String? {
        get {
            // Then & operator is used to get key address and send 
            // into the method as UnsafePointer<Void> parameter.
            // associated object API get method.
            return objc_getAssociatedObject(self, &key) as? String
        }
        set {
            // associated object API set method.
            objc_setAssociatedObject(self, &key, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

// Test function
func printTitle(input: MyClass) {
    if let title = input.title {
        print("Title: \(title)")
    } else {
        print("not set")
    }
}

let myClassObject = MyClass()
printTitle(input: myClassObject)

myClassObject.title = "Swift Daily Tips 1"
printTitle(input: myClassObject)

myClassObject.title = "Swift Daily Tips 2"
printTitle(input: myClassObject)