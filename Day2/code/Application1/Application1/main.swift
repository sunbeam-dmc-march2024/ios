//
//  main.swift
//  Application1
//
//  Created by Amit Kulkarni on 05/07/24.
//

// function parameters CAN NOT be implicitly declared
// func myFunction(p1) { }
// let p1 = 10

// parameterless function declaration
func function1() {
    print("inside function1")
}

// function call
// function1()

// param: external name
// param: internal name
func function2(param: Int) {
    print("inside function2")
    print("param = \(param)")
}

// function2(param: 100)


// external name:
// - param
// - used while passing the value for this parameter
// - CAN NOT be used inside the function
// internal name
// - p
// - used inside the function to access the value passed for this parameter
// - CAN NOT be used while passing value
func function3(param p: Int) {
    print("inside function3")
    print("param: \(p)")
    
    // since param is an external name, it can not be accessed inside the function
    // print("param: \(param)")
}

// function3(param: 100)

// since p is an internal name, it can be not be used while calling the function
// function3(p: 100)


func printPersonDetails(fullName name: String, presentAge age: Int, city: String, phoneNumber phone: String) {
    print("-- person details --")
    print("full name: \(name)")
    print("present age: \(age)")
    print("city: \(city)")
    print("phone number: \(phone)")
}

// printPersonDetails(fullName: "Amit Kulkarni", presentAge: 42, city: "pune", phoneNumber: "+91345446")


// external name: _
// - since the external name is underscore (_), caller can not use the external name while making function call
func square(_ num: Int) {
    print("square of \(num) = \(num * num)")
}

// square(10)

func add(_ p1: Int, _ p2: Int) -> Void {
    print("addition = \(p1 + p2)")
}

// add(10, 30)


// Int: return type
func function5() -> Int {
    return 10
}

func multiply(num1: Int, num2: Int) -> Int {
    return num1 * num2
}

let result = multiply(num1: 20, num2: 40)
// print("result = \(result)")


// with the latest version of Swift, it is not possible to change param sequence
// let result2 = multiply(num2: 30, num1: 60)

