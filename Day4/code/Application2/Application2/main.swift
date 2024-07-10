//
//  main.swift
//  Application2
//
//  Created by Amit Kulkarni on 10/07/24.
//

// protocol
// - set of rules
// - similar to interface in Java
// - collection of method declarations (abstract)
// - all methods must be implemented by the implementor class
// - you can not create an object of procotol

// Rule
// - after class name's : it is mandatory to start with super class
// - after super class, you can add as many protocols as needed

// Terminology
// - interface -> protocol
// - Java: class implements an interface
//   Swift: class conforms to a protocol

// Java:
// interface Shape {
//    void area();
//}

protocol Shape {
    func area()
}

// Java: class Rectangle implments Shape { ... }
class Rectangle: Shape {
    
    func area() {
        print("Rectangle area")
    }
    
}

// type of reference: Shape and type of object: Rectangle
let shape: Shape = Rectangle()
shape.area()

// type of reference: Rectangle and type of object: Rectangle
let rectangle: Rectangle = Rectangle()
rectangle.area()
