// One-Sided Ranges
// The closed range operator has an alternative form for ranges
// that continue as far as possible in one direction—for example,
// a range that includes all the elements of an array from index
// 2 to the end of the array. In these cases, you can omit the
// value from one side of the range operator. This kind of range
// is called a one-sided range because the operator has a value
// on only one side. For example:

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian