//
//  main.swift
//  Application4
//
//  Created by Amit Kulkarni on 04/07/24.
//

// function

// empty and parameterless function declaration
func function1() {}

// function call
//function1()

// paramterless function
func function2() {
    print("inside function2")
}

// fucntion call
//function2()


// Java: void function3(int p1) { SOP(p1); }
func function3(p1: Int) {
    print("inside function3")
    print("p1 = \(p1)")
}

// Java: function3(100)
//function3(p1: 100)

// Java: void printPerson(String n, String add, String city...)
// Java: printPerson("person1", "Pune", )
func printPersron(name: String, address: String, city: String) {
    print("name: \(name)")
    print("address: \(address)")
    print("city: \(city)")
}

printPersron(name: "person1", address: "pune", city: "pune")


