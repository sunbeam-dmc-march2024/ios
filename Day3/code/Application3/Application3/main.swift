//
//  main.swift
//  Application3
//
//  Created by Amit Kulkarni on 08/07/24.
//

// object oriented programming
// - programming with objects
// object:
// - instance of class
// - collection of properties (data members or fields) and methods
// class:
// - template to create an object
// - a reference type
// struct:
// - stands for structure
// - collection of similar or dissimilar data types
// - a value type
// NOTE:
// - in swift, new is NOT a keyword

// struct vs class
// - struct is a value type
//   class is a reference type
// - struct variable gets created in stack memory
//   class object gets created in heap memory
// - var or let will be applicable to struct object
//   var or let will be applicable to the reference and not to the object
// - a default initializer is provided by struct
//   a default initializer is NOT provided by class
// - struct members do not required initial value at the time of struct definition
//   class members require to get initialized with nil, they need to be declared as Optional members


// struct having two members (x and y)
// declaration and definition of a struct
struct Point {
    var x: Int
    var y: Int
}

// create a variable of type struct
// explicit declaration
var pt1: Point = Point(x: 0, y: 0)
print("pt1 = \(pt1), type = \(type(of: pt1))")

// since pt1 is declared with var, it is allowed to modify the members
pt1.x = 10
pt1.y = 10
print("pt1 = \(pt1), type = \(type(of: pt1))")

// implicit declaration
let pt2 = Point(x: 30, y: 40)
print("pt2 = \(pt2), type = \(type(of: pt2))")

// since pt2 is declared with let, it is a constant variable
//pt2.x = 10
//pt2.y = 10
//print("pt2 = \(pt2), type = \(type(of: pt2))")


// class definition
class CPoint {
    var x: Int?
    var y: Int?
}

// create an object of class CPoint
// CPoint pt = new CPoint();
var cpt1 = CPoint()
print("cpt1 = \(cpt1), type = \(type(of: cpt1))")

cpt1.x = 10
cpt1.y = 10
print("cpt1 = \(cpt1.x!), \(cpt1.y!), type = \(type(of: cpt1))")

// since cpt1 is mutable, you can refer new object using the same reference
cpt1 = CPoint()


let cpt2 = CPoint()
print("cpt2 = \(cpt2), type = \(type(of: cpt2))")

cpt2.x = 10
cpt2.y = 10
print("cpt2 = \(cpt2.x!), \(cpt2.y!), type = \(type(of: cpt2))")

// since cpt2 is immutable reference, it is not allowed to set new object to cpt2
// cpt2 = CPoint()
