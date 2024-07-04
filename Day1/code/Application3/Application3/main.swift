//
//  main.swift
//  Application3
//
//  Created by Amit Kulkarni on 04/07/24.
//

import Foundation

// String name = null;
// SOP(name.toLower());

// null string declaration
// Optional String variable
var name: String? = nil
print("name = \(name), type = \(type(of: name))")

name = "steve"
print("name = \(name), type = \(type(of: name))")

// unwrapping optional variable
// - read the value stored in optional variable
print("unwrapped name = \(name!), type = \(type(of: name))")


// Optional<Int>
var num: Int? = 20
print("num = \(num), type = \(type(of: num))")
print("unwrapped num = \(num!), type = \(type(of: num))")


print()


// Optional<String>
var myVar: String? = "test"
print("myVar = \(myVar), type = \(type(of: myVar))")

// unwrap the optional variable to read the value stored in the  variable
print("myVar = \(myVar!), type = \(type(of: myVar))")

// Optional<String>
var myVar3 = myVar
print("myVar3 = \(myVar3), type = \(type(of: myVar3))")


// String
var myVar4 = myVar!
print("myVar4 = \(myVar4), type = \(type(of: myVar4))")


var salary: Int? = 50

// salary2 is Optional<Int>
var salary2 = salary
print("salary2 = \(salary2), type = \(type(of: salary2))")

// salary3 is Int
var salary3 = salary!
print("salary3 = \(salary3), type = \(type(of: salary3))")


// var myVar2: String? = nil
// unwrapping a nil value will throw an error
// print("myVar2 = \(myVar2!), type = \(type(of: myVar2))")

var myVar5: String? = nil

// 1. check if myVar5 is non-nil
// 2. it myVar5 is nil do not perform any operation
// 3. if myVar5 is non-nil, unwrap it and store the value in myVarUnwrapped
// let myVarUnwrapped = myVar5!
if let myVarUnwrapped = myVar5 {
    print("myVarUnwrapped = \(myVarUnwrapped), type = \(type(of: myVarUnwrapped))")
} else {
    print("myVar5 is nil")
}


let age: Float? = nil
if let age = age {
    print("age = \(age), type = \(type(of: age))")
} else {
    print("age is nil")
}
