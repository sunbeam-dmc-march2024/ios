//
//  main.swift
//  Application3
//
//  Created by Amit Kulkarni on 05/07/24.
//


// Array vs Tupple
// - array may be declared as mutable (var) or immutable (let)
//   tuple is always defined as immutable collection
// - array uses []
//   tuple uses ()
// - values can retrieved from an array dynamically (for loop is supported)
//   values from Tuple can not be dynmically read (for loop is not supported)
// - to read value from array, subscript ([]) with index can be used
//   to read value from tuple, . with index can be used

// tuple
// - collection of similar or dissimilar elements
// - tuple is immutable collection of values
// - uses () to create a tuple

func function1() {
    // implicit declaration of tuple
    let t1 = ("person1", 40, "pune", true)
    print("t1 = \(t1), type = \(type(of: t1))")
    
    // explicit declaration of tuple
    let t2: (String, String, Int) = ("iPhone 13 Pro Max", "Apple", 206000)
    print("t2 = \(t2), type = \(type(of: t2))")
}

// function1()


func function2() {
    // array of numbers
    let numbers = [10, 20, 30]
    print("value at 0: \(numbers[0])")
    print("value at 1: \(numbers[1])")
    print("value at 2: \(numbers[2])")
    
    print("-----")

    // tuple of values
    let person = ("person1", 40, "pune")
    print("name = \(person.0)")
    print("age = \(person.1)")
    print("address = \(person.2)")
}

//function2()

func function3() {
    // explicit declaration of tuple
    let person: (name: String, age: Int, address: String) = ("person1", 40, "pune")
    print("name = \(person.0)")
    print("age = \(person.1)")
    print("address = \(person.2)")
    
    print("----")
    
    print("name = \(person.name)")
    print("age = \(person.age)")
    print("address = \(person.address)")
    
}

//function3()




