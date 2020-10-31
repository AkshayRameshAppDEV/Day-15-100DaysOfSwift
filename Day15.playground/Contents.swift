import UIKit

// Properties
// Structs and class have property
// They are declared first usually on start before init and any other functions
// didSet and willSet - these methods are property observers which updates values when property changes
// Computed properties - computes some calculation and sets the computed value for property
// computed property get or set
struct User {
    var id: Int {
        //called first
        willSet {
            print("willSet Called -> \(newValue)")
        }
        
        // called after willSet
        didSet {
            print("didSet Called -> \(oldValue)")
        }
    }
    var name: String {
        return "Hello,\(id)"
    }
}
var user1 = User(id: 123)
user1.name
user1.id

user1.id = 1234

// Static and private
// Static methods and properties - can be called directly using struct/class name and cant be called on using instances
// private - property can be private and can be only used within the class.
struct Static {
    public var name: String
    var x: String
    static var id = "1234"
    
    static func staticMethod() {
        print("My id")
    }
    
}

let s = Static(name: "123", x: "x")
Static.id
Static.staticMethod()


// Polymorphism and typecasting
// Both classes type at the same time
// everything referes to parent type
// The subclass never lose their class status and they always use overriden methods
// Convert to class type using as?
// primitive type using initializers
class God {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func status() {
        print("I am God")
    }
}

class AK: God {
    var n: String
    init(n: String) {
        self.n = n
        super.init(name: self.n)
    }
    override func status() {
        print("I am AK")
    }
}


class SK: God {
    var n: String
    init(n: String) {
        self.n = n
        super.init(name: self.n)
    }
    override func status() {
        print("I am SK")
    }
}
let a = AK(n: "a")
let b = God(name: "G")
let c = SK(n: "G")
let d = SK(n: "G")

let e: [God] = [a, b, c, d]
for item in e {
    let i = item as? SK
    i?.status()
}

// Closures
// variable holding functions and also params associated with it
// aka Anonymous functions
// Trailing closures
let myClosure = { (name: String) in
    print("I am closure string \(name)")
}
myClosure("AK")

func trailingClosureFunction(firstParam: String, secondParam: (_ x: String) -> Void) {
    print("I am inisde trailing closure function")
    secondParam(firstParam)
    print("DONE")
}

trailingClosureFunction(firstParam: "Ak1", secondParam: myClosure)
