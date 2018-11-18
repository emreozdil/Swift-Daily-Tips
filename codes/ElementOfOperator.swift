infix operator ∈
func ∈ <T: Equatable>(lhs: T, rhs: [T]) -> Bool {
    return rhs.contains(lhs)
}

let month = "September"
if month ∈ ["April", "June", "September", "November"] {
    print("\(month) has 30 days.")
}
// 👇🏻 You can take this sembol.