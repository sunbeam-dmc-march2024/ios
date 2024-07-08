//
//  main.swift
//  Application5
//
//  Created by Amit Kulkarni on 08/07/24.
//

// reusability
// - association using Aggregation

// Person has-a Car

class Car {
    var model: String!
    var company: String!
    var price: Int!
    
    init(model: String!, company: String!, price: Int!) {
        self.model = model
        self.company = company
        self.price = price
    }
    
    func display() {
        print("model: \(self.model!), company: \(self.company!), price: \(self.price!)")
    }
}

class Person {
    var name: String!
    var address: String!
    
    // Person has-a Car
    // one-to-one relationship
    var car: Car!
    
    init(name: String!, address: String!, car: Car!) {
        self.name = name
        self.address = address
        self.car = car
    }
    
    func display() {
        print("name: \(self.name!), address: \(self.address!)")
        car.display()
    }
}

//let car = Car(model: "i20", company: "hyundai", price: 15)
//let person = Person(name: "person1", address: "pune", car: car)
//person.display()


class Player {
    var name: String!
    var team: String!
    
    // one-to-many relationship
    var cars: [Car] = []
    
    init(name: String!, team: String!) {
        self.name = name
        self.team = team
    }
    
    func addCar(model: String, company: String, price: Int) {
        // create an object of Car class
        let car = Car(model: model, company: company, price: price)
        
        // append the object to the array
        self.cars.append(car)
    }
    
    func diasplay() {
        print("name: \(self.name!), team: \(self.team!)")
        print("-- car collection --")
        for car in self.cars {
            car.display()
        }
    }
}

let player = Player(name: "Sachin", team: "Team India")
player.addCar(model: "i80", company: "BMW", price: 180)
player.addCar(model: "ranage rover autobiography", company: "Range Rover", price: 450)

player.diasplay()
