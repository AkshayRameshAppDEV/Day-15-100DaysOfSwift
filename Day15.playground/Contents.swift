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
