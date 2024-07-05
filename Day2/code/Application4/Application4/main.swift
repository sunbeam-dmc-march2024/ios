//
//  main.swift
//  Application4
//
//  Created by Amit Kulkarni on 05/07/24.
//

// Array vs Set
// - array supports duplicate values
//   set does not duplicate values
// - array can be declared using []
//   set can be declared using [] but needs to be declared explicitly
// - array uses the same insersion order
//   set uses hash function to store the values. the insersion order is not honored

// Set
// - collection of unique values
// - can not be declared implicitly


func function1() {
    // array of integer values
    let array = [10, 20, 30, 10, 20, 30, 10, 20, 30]
    print("array = \(array), type = \(type(of: array))")
    
    // tuple of integer value
    let tuple = (10, 20, 30, 10, 20, 30, 10, 20, 30)
    print("tuple = \(tuple), type = \(type(of: tuple))")
    
    // set of integer value
    let set: Set<Int> = [10, 20, 30, 10, 20, 30, 10, 20, 30]
    print("set = \(set), type = \(type(of: set))")
    
}

//function1()


func function2() {
    // set of integer values
    let s1: Set<Int> = [10, 20, 30, 40, 50]
    let s2: Set<Int> = [40, 50, 60, 70, 80]
    
    // intersection of two sets
    print("s1 intersection s2 = \(s1.intersection(s2))")
    print("s2 intersection s1 = \(s2.intersection(s1))")
    print(" --- ")
    
    // union of two sets
    print("s1 union s2 = \(s1.union(s2))")
    print("s2 union s1 = \(s2.union(s1))")
    print(" --- ")
    
    // subtraction of two sets
    print("s1 - s2 = \(s1.subtracting(s2))")
    print("s2 - s1 = \(s2.subtracting(s1))")
    print(" --- ")
}

function2()
