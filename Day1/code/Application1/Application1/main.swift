//
//  main.swift
//  Application1
//
//  Created by Amit Kulkarni on 04/07/24.
//

// implicit declaration

// mutable variable
var num = 100
// num = 100

// .. (`num = ${num}`)
print("num = \(num)")

// since it is a variable, we can change the value
// num = 200
// print("num = \(num)")

// since swift is a type-safe lanugage, data type can not be changed
// num = "test"

// implicit declaration can NOT be used to declare uninitialized variable
// var myAddress

// immutable variable (constant)
let age = 10
print("age = \(age)")

// since age is a constant, value can not be changed
// age = 11



// explict declaration

// int num2 = 100;
var num2: Int = 100
print("num2 = \(num2)")

// swift is a type-safe language
// num2 = "test"

// you may keep a variable uninitialized
var myName: String

// constant declaration
let myAddress = "Pune"

// can not change the value
// myAddress = "USA"
print("address = \(myAddress)")
