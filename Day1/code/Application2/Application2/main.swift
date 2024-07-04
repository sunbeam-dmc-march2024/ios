//
//  main.swift
//  Application2
//
//  Created by Amit Kulkarni on 04/07/24.
//

// supported data types

// implicit

// Int
let num = 100
print("num = \(num), data type = \(type(of: num))")

// Float
// Cannot be declared implicitly

// Double
let salary = 10.50
print("salary = \(salary), data type = \(type(of: salary))")

// String
let myChar = "a"
print("myChar = \(myChar), data type = \(type(of: myChar))")

// Bool
let areYouPayingAttention = false
print("areYouPayingAttention = \(areYouPayingAttention), data type = \(type(of: areYouPayingAttention))")

print()

// explicit

// Int
let num2: Int8 = 100
print("num2 = \(num2), data type = \(type(of: num2))")

// Float
let salary2: Float16 = 10.50
print("salary2 = \(salary2), data type = \(type(of: salary2))")

// Double
let salary3: Double = 150.50
print("salary3 = \(salary3), data type = \(type(of: salary3))")

// Character
let myChar2: Character = "a"
print("myChar2 = \(myChar2), data type = \(type(of: myChar2))")

// String
let name: String = "Steve"
print("name = \(name), data type = \(type(of: name))")

// Bool
let areYouSleeping = true
print("areYouSleeping = \(areYouSleeping), data type = \(type(of: areYouSleeping))")
