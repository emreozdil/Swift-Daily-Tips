// You will often want to limit your generics 
// so that they can operate only on similar types of data, 
// and Swift makes this both simple and easy.

protocol IntegerValue {
    var integerValue: Int { get }
}

// This function square an integer value of any type
// that confirm to IntegerValue for example.
func square<T: IntegerValue>(_ value: T) -> Int {
    return value.integerValue * value.integerValue
}

struct CorrectStruct: IntegerValue {
    var integerValue: Int {
        return 5
    }
}
square(CorrectStruct())  // return 25

// struct IncorrectStruct {
//     var integerValue: Int {
//         return 5
//     }
// }
// square(IncorrectStruct())  // compile error