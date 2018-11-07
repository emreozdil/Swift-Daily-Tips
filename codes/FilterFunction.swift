let digits = [1, 4, 10, 15]
let even = digits.filter { $0 % 2 == 0 }
// [4, 10]

let cast = ["Vivien", "Marlon", "Kim", "Karl"]
let shortNames = cast.filter { $0.count < 5 }
// ["Kim", "Karl"]