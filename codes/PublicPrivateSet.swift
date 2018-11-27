// Swift has a great middle ground: public private(set).
// This lets us mark a property as being open for reading but closed for writing

struct Bank {
    public private(set) var address: String
}

let bank = Bank(address: "My Address")

// Bank address getter is public
print(bank.address)     // OUTPUT: My Address

// Bank address setter is private
// bank.address = "Karim"       // Compile Error