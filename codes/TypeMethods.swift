// You indicate type methods by writing the static keyword
// before the method’s func keyword. Classes may also use
// the class keyword to allow subclasses to override
// the superclass’s implementation of that method.

class Service {
    class func fetchData() { }
    static func sendData() { }
}

class MovieService: Service {
    override class func fetchData() { }
    // Cannot override static function
    // override static func sendData() { }
}

// No longer have to initialize an object to access functions.
Service.sendData()
MovieService.fetchData()