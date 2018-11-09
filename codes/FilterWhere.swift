// Use .first(where: (Int) throws -> Bool)
// to retrieve first elemen in an array which contains
// the same conditional objects.
let array = [4, 5, 6, 2, 1, 1, 6, 8, 1, 4, 2, 3]
let firstItemWithCondition = array.first(where: { $0 == 1 })
