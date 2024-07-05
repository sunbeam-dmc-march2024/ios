//
//  main.swift
//  Application2
//
//  Created by Amit Kulkarni on 05/07/24.
//

// Collection
// Array
// - collection of similar values

func function1() {
    // array implicit declaration
    
    // array of integers
    let array1 = [10, 20, 30, 40, 50]
    print("array1 = \(array1), type of array1 = \(type(of: array1))")
    
    // array of double values
    let array2 = [10.5, 20.5, 30.5, 40.5, 50.5]
    print("array2 = \(array2), type of array2 = \(type(of: array2))")
    
    // array of string values
    let names = ["steve jobs", "elon musk", "sundar pichai"]
    print("names = \(names), type of names = \(type(of: names))")
    
    // array of boolean values
    let canVote = [true, false, true, false, false]
    print("canVote = \(canVote), type of canVote = \(type(of: canVote))")
    
    // empty array CAN NOT be declared implicitly
    // let emptyArray = []
}

// function1()

func function2() {
    // explicit array declaration
    let array1: Array<Int> = [10, 20, 30, 40, 50]
    print("array1 = \(array1), type of array1 = \(type(of: array1))")
    
    let array2: [Int] = [10, 20, 30, 40, 50]
    print("array2 = \(array2), type of array2 = \(type(of: array2))")
    
    let countries: Array<String> = ["india", "usa", "uk", "japan"]
    print("countries = \(countries), type of countries = \(type(of: countries))")
    
    let countries2: [String] = ["india", "usa", "uk", "japan"]
    print("countries2 = \(countries2), type of countries2 = \(type(of: countries2))")
    
    // empty array of Integers
    let emptyArray1: Array<Int> = []
    print("emptyArray1 = \(emptyArray1), type of emptyArray1 = \(type(of: emptyArray1))")
    
    // empty array of Integers
    let emptyArray2: [Int] = []
    print("emptyArray2 = \(emptyArray2), type of emptyArray2 = \(type(of: emptyArray2))")
}

//function2()


func function3() {
    // Java: int array[] = [10, 20, 30, 40, 50];
    // array: once created, you can not change the array size
    let array1 = [10, 20, 30, 40, 50]
    // array1.append(60)
    
    // Java: ArrayList<Int> array = new ArrayList<Int>();
    // collection: you can add as many values as possible dynamically
    var array2 = [10, 20, 30, 40, 50]
    array2.append(60)
}

func function4() {
    // collection operations
    var array = [10, 20, 30, 40, 50]
    print("array = \(array), length = \(array.count)")
    
    // append a value at the end of the collection
    array.append(60)
    print("array = \(array), length = \(array.count)")
    
    array.append(70)
    print("array = \(array), length = \(array.count)")
    
    // insert a value inside the collection at requried position
    array.insert(15, at: 1)
    print("array = \(array), length = \(array.count)")
    
    array.insert(25, at: 3)
    print("array = \(array), length = \(array.count)")
}

//function4()

func function5() {
    // collection operations
    var array: [Int] = [10, 20, 30, 40, 50]
    print("array = \(array), length = \(array.count)")
    
    // remove last value
    let _ = array.popLast()
    print("array = \(array), length = \(array.count)")
    
    // remove the first value
    // array.popFirst()
    // print("array = \(array), length = \(array.count)")
    
    // remove a value in between
    array.remove(at: 2)
    print("array = \(array), length = \(array.count)")
    
    // remove the first value
    array.remove(at: 0)
    print("array = \(array), length = \(array.count)")
    
}

//function5()

func function6() {
    var countries = ["india", "china", "usa", "uk", "japan"]
    print("countries = \(countries), length = \(countries.count)")
    
    // countries.remove(at: 3)
    // print("countries = \(countries), length = \(countries.count)")
    
    // Java: for(String country: countries) {..}
    var index = 0
    for country in countries {
        if country == "china" {
            break
        }
        index += 1
    }
    
    // remove value
    countries.remove(at: index)
    print("countries = \(countries), length = \(countries.count)")
    
    var names = ["person1", "person2"]
    print("names = \(names), length = \(names.count), isEmpty = \(names.isEmpty)")
    
    // remove all elements
    names.removeAll()
    print("names = \(names), length = \(names.count), isEmpty = \(names.isEmpty)")
    
}

//function6()

func function7() {
    let array = [10, 20, 30, 40, 50]
        
    // for..each => for..in
    // - index position is missing
    // - there is no control on start and end of loop
    // - it always will start from 0th index and will go till the last position
    // for (String country : countries) {..}
    for value in array {
        print("value = \(value)")
    }
    
    print("---")
    
    // traditional for loop
    // - a value can be accessed using index position
    // - use this strategy when you want to control the start and end of loop
    // for (int index = 0; index < 10; index++) {..}
    for index in 0..<array.count {
        print("value = \(array[index])")
    }
    
    print("---")
    let positions = [0, 2, 4]
    for index in positions {
        print("value at \(index) = \(array[index])")
    }
}

function7()

func function8() {
    // range operator
    // - used to generate a sequence of numbers
    
    // closed range operator
    // - this operator will generate a sequence from 0 to 10
    // - syntax: <lower>...<upper>
    // - numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let numbers = 0...10
    print("numbers - \(numbers)")
    for value in numbers {
        print("value = \(value)")
    }
    
    print("----")
    
    // open range operator
    // - this operator will generate a sequence exluding upper bound
    // - the values will start from 0 and will not include 10
    // - numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    let numbers2 = 0..<10
    print("numbers2 = \(numbers2)")
    for value in numbers2 {
        print("value = \(value)")
    }
}

//function8()
