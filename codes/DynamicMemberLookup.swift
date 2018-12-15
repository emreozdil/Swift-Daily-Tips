// Dynamic Member Lookup
// Apply this attribute to a class, structure, enumeration, or protocol
// to enable members to be looked up by name at runtime. The type must
// implement a subscript(dynamicMemberLookup:) subscript.

@dynamicMemberLookup
struct DynamicStruct {
    let dictionary = ["someDynamicMember": 325,
                      "someOtherMember": 787]
    subscript(dynamicMember member: String) -> Int {
        return dictionary[member] ?? 1054
    }
}
let s = DynamicStruct()

// Using dynamic member lookup
let dynamic = s.someDynamicMember
print(dynamic)
// Prints "325"

// Calling the underlying subscript directly
let equivalent = s[dynamicMember: "someDynamicMember"]
print(dynamic == equivalent)
// Prints "true"