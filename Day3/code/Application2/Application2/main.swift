//
//  main.swift
//  Application2
//
//  Created by Amit Kulkarni on 08/07/24.
//

// enclosure
// - similar to anonymous function in JS

// function type: (Int, Int) -> Void
func add(p1: Int, p2: Int) {
    print("\(p1) + \(p2) = \(p1 + p2)")
}

// execute accepts a paramter of function type
func execute(function: (Int, Int) -> Void) {
    // call the function
    function(10, 20)
}

//execute(function: add)

// JS: execute((p1, p2) => {
//        console.log(`${p1} - ${p2} = ${p1 - p2}`)
//     })

// enclosure: similar to arrow function
//execute(function: { (p1: Int, p2: Int) -> Void in
//    print("\(p1) - \(p2) = \(p1 - p2)")
//})

//execute(function: {(p1, p2) -> Void in
//    print("\(p1) / \(p2) = \(p1 / p2)")
//})

//execute(function: {(p1, p2) in
//    print("\(p1) * \(p2) = \(p1 * p2)")
//})

// const subtration = (p1, p2) => {
//   console.log(`${p1} - ${p2} = ${p1 - p2}`)
// }

// enclosure declaration
let subtract: (Int, Int) -> Void = { (p1, p2) in
    print("\(p1) - \(p2) = \(p1 - p2)")
}

//print("subtract: \(subtract), type = \(type(of: subtract))")
//execute(function: subtract)

// write an enclosure for getting square of a number
let square: (Int) -> Int = { (p1) in
    return p1 * p1
}

//print("square of 5 = \(square(5))")

// write an enclosure for getting cube of a number
// for an enclosure with single parameter, () for parameter is not required
let cube: (Int) -> Int = { p1 in
    return p1 * p1 * p1
}

print("cube of 5 = \(cube(5))")

