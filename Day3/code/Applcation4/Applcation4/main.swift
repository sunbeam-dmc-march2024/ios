//
//  main.swift
//  Applcation4
//
//  Created by Amit Kulkarni on 08/07/24.
//

// class
// - used to create an object
// - of reference

// unwrap with data type
// - the value of the variable will never be nil
// - the variable will always be used in unwrapped mode (no need of unwrapping again)



//class Person {
//    var firstName: String!
//    var lastName: String!
//    var email: String!
//    var phone: String!
//    var address: String!
//}

//let person = Person()
//person.firstName = "steve"
//person.lastName = "jobs"
//person.email = "steve@apple.com"
//person.address = "USA"
//person.phone = "+134512323324"
//print("first name = \(person.firstName!), last name = \(person.lastName!), address = \(person.address!), email = \(person.email!), phone = \(person.phone!)")

// ARC
// - Automatic Rererence Counting
// - a way to delete the objects when they are not needed
// - used to automatic memory management
// - similar to Garbage collection in Java, but it is better than GC
// - it does not require a separate GC thread to continuously run in the backgound
// - instead every object has a property named referenceCount which is used to manage the life cycle


// class
// - collection of properties and methods
// - method
//   - function declared inside a class
//   - types
//     - initializer
//       - same as constructor in Java
//       - used to initialize the object
//       - always represented as init()
//     - deinitilizer
//       - same as destructor in C++
//       - used to uninitialize the object
//       - always represented as deinit
//       - with ARC (automatic reference counting) deinit method does not get called any more
//     - setter or mutator
//       - used to seta value of a property
//     - getter or inspector
//       - used to get value of a property
//     - facilitator
//       - used to add a facility in the class


class Mobile {
    // properties
    var model: String!
    var company: String!
    var price: Int!
    
    // methods
    
    // initializer - default
    init() { print("inside default initializer") }
    
    // deinitializer
    // - this will never get called because of ARC
    // deinit { print("inside deinitializer") }
    
    // setters
    func setModel(model: String) { self.model = model }
    func setCompany(company: String) { self.company = company }
    func setPrice(price: Int) { self.price = price }
    
    // getters
    func getModel() -> String { return self.model }
    func getCompany() -> String { return self.company }
    func getPrice() -> Int { return self.price }
    
    // facilitator
    func display() {
        print("model: \(self.model!), company: \(self.company!), price: \(self.price!)")
    }
    
}

// create an object of Mobile
//let m1 = Mobile()
//m1.model = "iPhone 15 Pro"
//m1.company = "apple"
//m1.price = 190000
//m1.display()
//
//m1.setPrice(price: 195000)
//m1.display()


class Person {
    var firstName: String!
    var lastName: String!
    var email: String!
    var age: Int!
    
    init() { print("inside default initializer") }
    
    // custom initializer => parameterized constructor in Java
    init(firstName: String!, lastName: String!, email: String!, age: Int!) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.age = age
    }
    
    func display() {
        print("name = \(self.firstName!) \(self.lastName!), email = \(self.email!), age = \(self.age!)")
    }
}

// custom initializer will get called
let person1 = Person(firstName: "amit", lastName: "kulkarni", email: "amit@est.com", age: 42)

person1.display()


















