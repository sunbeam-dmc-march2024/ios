//
//  main.swift
//  Application5
//
//  Created by Amit Kulkarni on 05/07/24.
//

// array vs dictionary
// - array is a collection of values
//   dictionary is collection of key-value pairs


// dictionary
// - collection of key-value pairs
// - use [] to created a dictionary
// - dictionary may contain a key of Any type, but it is discouraged in Swift
// - since there are many permutations and combinations possible with String data type, they key in dictionary will be considered of type String
// - the key in a dictionary must be present (can not be nil)
// - dictionary always return optional value(s)

// type casting
// - changing the data type
// - as keyword is used for type casting
// - types
//   - as?
//     - always returns optional value
//     - if type conversion fails, it returns nil without throwing an exception
//     - use this style, when you are not sure about the type conversion
//   - as!
//     - always returns non-option value
//     - if type conversion fails, it throws an exception and application crahses
//     - use this style, when you are sure about the type conversion

func function1() {
    // array of numbers
    let array = [10, 20, 30, 40, 50]
    print("array = \(array), type = \(type(of: array))")
    
    // tuple of numbers
    let tuple = (10, 20, 30, 40, 50)
    print("tuple = \(tuple), type = \(type(of: tuple))")
    
    // array of numbers
    let set: Set<Int> = [10, 20, 30, 40, 50]
    print("set = \(set), type = \(type(of: set))")
    
    // dictionary of key-value pairs
    let dictionary = [
        "name": "person1",
        "addres": "pune",
        "email": "person1@test.com"
    ]
    print("dictionary = \(dictionary), type = \(type(of: dictionary))")
}

//function1()

func function2() {
    // implicit declaration of dictionary
    let person = [
        "name": "person1",
        "addres": "pune",
        "email": "person1@test.com"
    ]
    print("person = \(person), type = \(type(of: person))")
    
    print("---")
    
    // explicit declartion of dictionary
    let car: Dictionary<String, String> = [
        "model": "triber",
        "company": "renault"
    ]
    print("car = \(car), type = \(type(of: car))")
    
    print("---")
    
    // explicit declartion of dictionary
    let mobile: [String:String] = [
        "model": "iPhone",
        "company": "Apple"
    ]
    print("mobile = \(mobile), type = \(type(of: mobile))")
}

//function2()

func function3() {
    // Any: the value can be of Any type
    let person: [String: Any] = [
        "name": "person1",
        "phone": "+91234234",
        "address": "Pune",
        "age": 40,
        "canVote": true,
        "salary": 10.50
    ]
    print("person = \(person), type = \(type(of: person))")
    
//    let dummy: [Int: String] = [
//        1: "One",
//        2: "Two",
//        3: "Three"
//    ]
}

//function3()

func function4() {
    // array of values
    let array: [Int] = [10, 20, 30]
    print("array[0] = \(array[0]), type = \(type(of: array[0]))")
    
    // dictionary
    let dictionary: [String: Int] = ["one": 1, "two": 2, "three": 3]
    
    let value = dictionary["one"]
    
    print("dictionary['one'] = \(value), type = \(type(of: value))")
    
    // conditional unwrapping
    if let value = dictionary["two"] {
        print("dictionary['two'] = \(value)")
    } else {
        print("two does not exist")
    }
    
    if let value = dictionary["three"] {
        print("dictionary['three'] = \(value)")
    } else {
        print("three does not exist")
    }
    
    if let value = dictionary["four"] {
        print("dictionary['four'] = \(value)")
    } else {
        print("four does not exist")
    }
    
    if let value = dictionary["five"] {
        print("dictionary['five'] = \(value)")
    } else {
        print("five does not exist")
    }
    
    
}

//function4()

func function5() {
    let person: [String: Any] = [
        "name": "person1",
        "email": "person1@test.com",
        "canVote": true,
        "salary": 10.50,
        
        "address": [
            "city": "pune",
            "state": "MH",
            "zipCode": 411041
        ],
        "hobbies": ["reading books", "watching movies"],
    ]
    
    if let name = person["name"] {
        print("name = \(name)")
    }
    
    if let email = person["email"] {
        print("email = \(email)")
    }
    
    if let canVote = person["canVote"] {
        print("canVote = \(canVote)")
    }
    
    if let salary = person["salary"] {
        print("salary = \(salary)")
    }
    
    // get address
    if let address = person["address"] as? [String: Any] {
        if let city = address["city"] {
            print("city = \(city)")
        }
        if let state = address["state"] {
            print("state = \(state)")
        }
        if let zipCode = address["zipCode"] {
            print("zipCode = \(zipCode)")
        }
    }
    
    // get hobbies
    let hobbies = person["hobbies"] as! [String]
    print("- hobbies")
    for hobby in hobbies {
        print("hobby = \(hobby)")
    }
 }

//function5()


func function6() {
    let myDictionary: [String: Any] = ["key1": "value1", "key2": 20]
    // let name = "steve"
    print("myDictionary['key1'] as? String = \(myDictionary["key1"] as? String)")
    print("myDictionary['key1'] as! String = \(myDictionary["key1"] as! String)")
    
//    if let value = myDictionary["key1"] as String {
//        print("value of key1 = \(value), type = \(type(of: value))")
//        value.lowercased()
//    }
}

//function6()


func function7() {
    let phone: [String: Any] = [
        "model": "iPhone 13 Pro Max",
        "company": "apple",
        "price": 190000,
        "color": "golden",
        "screenSize": "7inch",
        "cpu": "A13",
        "isHomeButtonPresent": false
    ]
    
     print("keys: \(phone.keys)")
    
    // get all key-value pairs dymically
    for key in phone.keys {
        print("key = \(key), value = \(phone[key]!)")
    }
    
    print("--")
    
    print("values: \(phone.values)")
}

function7()
