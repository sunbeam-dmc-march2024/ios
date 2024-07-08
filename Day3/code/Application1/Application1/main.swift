//
//  main.swift
//  Application1
//
//  Created by Amit Kulkarni on 08/07/24.
//

// function type
// - type of function
// - includes
//   - function parameters along with the data types
//   - return type
// - symtax: (<list of parameters>) -> <return type>
// - e.g. (Int, Int) -> Int
// - used to declare a variable of type function explicitly

// function type: () -> Void or () -> ()
func function1() {
    print("inside function1")
}


// function type: (Int) -> Int
func function2(p1: Int) -> Int {
    print("inside function2")
    return p1 * p1
}

// function type: (Int, String) -> Float
func function3(p1: Int, str: String) -> Float {
    print("inside function3")
    return 2.4
}

// function type: () -> Int
func function4() -> Int { return 10 }

// function type: (Float, Int, String) -> String
func function5(f: Float, i: Int, s: String) -> String { return "" }

func function6() {
    // implicit: Int
    let num = 100
    let num3 = num
    
    // explicit: Int
    let num2: Int = 200
    let num4 = num2
    
    // function is considered as first class citizen
    // - you can create a variable of type function: () -> Void or () -> ()
    let myVar1 = function1
    print("myVar1 = \(myVar1), type = \(type(of: myVar1))")
    
    // call function1 using original name function1
    function1()
    
    // call function1 using function variable
    myVar1()
    
    
    // myVar2 is a variable of type: (Int) -> Int
    let myVar2 = function2
    print("myVar2 = \(myVar2), type = \(type(of: myVar2))")
    function2(p1: 10)
    myVar2(20)

    // myVar3 is also a variable of function type
    // it is declared explicitly
    let myVar3: (Int, String) -> Float = function3
    print("myVar3 = \(myVar3), type = \(type(of: myVar3))")
    function3(p1: 10, str: "test")
    myVar3(10, "test")
}

//function6()

// function type: (Int, Int) -> Void
func add(p1: Int, p2: Int) {
    print("\(p1) + \(p2) = \(p1 + p2)")
}

// function type: (Int, Int) -> Void
func subtract(p1: Int, p2: Int) {
    print("\(p1) - \(p2) = \(p1 - p2)")
}

// function type: (Int, Int) -> Void
func multiply(p1: Int, p2: Int) {
    print("\(p1) * \(p2) = \(p1 * p2)")
}

// function type: (Int, Int) -> Void
func divide(p1: Int, p2: Int) {
    print("\(p1) / \(p2) = \(p1 / p2)")
}



func execute(function: (Int, Int) -> Void) {
    // function is a function variable
    function(10, 20)
    function(30, 40)
    function(50, 60)
    function(70, 80)
    function(90, 100)
}

// execute function is receiving a parameter of type function
execute(function: add)
execute(function: subtract)
execute(function: multiply)
execute(function: divide)
