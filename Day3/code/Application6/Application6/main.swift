//
//  main.swift
//  Application6
//
//  Created by Amit Kulkarni on 08/07/24.
//

// inheritance


// single inheritance
// Employee is derived from Person

// class
// - parent, super, base
class Person {
    var name: String!
    var address: String!
    var age: Int!
    
    init(name: String!, address: String!, age: Int!) {
        self.name = name
        self.address = address
        self.age = age
    }
    
    func display() {
        print("Person [\(self.name!), \(self.address!), \(self.age!)]")
    }
}


// class
// - child, subclass, derived
class Employee : Person {
    var employeeId: Int!
    
    init(employeeId: Int, name: String, address: String, age: Int) {
        // call the super class initializer
        super.init(name: name, address: address, age: age)
        self.employeeId = employeeId
    }
    
    override func display() {
        // super.display()
        print("Employee [employeeId: \(self.employeeId!), \(self.name!), \(self.address!), \(self.age!)]")
    }
}

//let person = Person(name: "person1", address: "pune", age: 40)
//person.display()
//
//let employee = Employee(employeeId: 1, name: "employee 1", address: "pune", age: 30)
//employee.display()



class Player : Person {
    var team: String!
    
    init(name: String!, address: String!, age: Int!, team: String) {
        super.init(name: name, address: address, age: age)
        self.team = team
    }
    
    override func display() {
        print("Player [\(self.name!), \(self.address!), \(self.age!), \(self.team!)]")
    }
}

class Manager : Employee {
    var departent: String!
    
    init(employeeId: Int, name: String, address: String, age: Int, department: String) {
        // call the super class initializer
        super.init(employeeId: employeeId, name: name, address: address, age: age)
        self.departent = department
    }
    
    override func display() {
        // super.display()
        print("Manager [\(self.employeeId!), \(self.name!), \(self.address!), \(self.age!), \(self.departent!)]")
    }
}
