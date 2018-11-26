// Property Observers
/*
 Property observers observe and respond to changes in a property’s
 value. Property observers are called every time a property’s value is
 set, even if the new value is the same as the property’s current value.
 */
struct MyAwesomeClass {
    var awesomeProperty: String {
        willSet {
            // This will be called just before the property is set.
            print("value is \(self.awesomeProperty)")
            print("value will be \(newValue)")
        }
        
        didSet {
            // This will be called just after the property is set.
            print("value is \(self.awesomeProperty)")
            print("value was \(oldValue)")
        }
    }
}

let example = MyAwesomeClass(awesomeProperty: "iPhone7")
example.awesomeProperty = "iPhoneX"
// value is iPhone7
// value will be iPhoneX
// value is iPhoneX
// value was iPhone7
