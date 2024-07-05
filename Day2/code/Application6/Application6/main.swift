//
//  main.swift
//  Application6
//
//  Created by Amit Kulkarni on 05/07/24.
//

// multi-dimensional collection
// - collection of collections
// - array of arrays or array of dictionaries

func function1() {
    // 1D array
    // size: 5
    let array1D = [10, 20, 30, 40, 50]
    print("array1D = \(array1D)")
    for value in array1D {
        print("value = \(value)")
    }
    
    print("---")
    
    // 2D array: array of arrays
    // size: 3x2
    let array2D = [
        [10, 20],
        [30, 40],
        [50, 60]
    ]
    print("array2D = \(array2D)")
    for row in array2D {
        for column in row {
            print("column = \(column)")
        }
        print("")
    }
    
    print("--")
    for i in 0..<array2D.count {
        // print("row = \(array2D[i])")
        for j in 0..<array2D[i].count {
            print("value at [\(i)][\(j)] = \(array2D[i][j])")
        }
    }
    
}

//function1()


func function2() {
    // array of dictionaries
//    let blogs: Array<Dictionary<String, Any>> = [
//        [ "id": 1, "title": "blog 1" ],
//        [ "id": 2, "title": "blog 2" ],
//        [ "id": 3, "title": "blog 3" ],
//        [ "id": 4, "title": "blog 4" ],
//        [ "id": 5, "title": "blog 5" ]
//    ]
    
    let blogs: [[String: Any]] = [
        [ "id": 1, "title": "blog 1" ],
        [ "id": 2, "title": "blog 2" ],
        [ "id": 3, "title": "blog 3" ],
        [ "id": 4, "title": "blog 4" ],
        [ "id": 5, "title": "blog 5" ]
    ]
    
    for blog in blogs {
        // print("blog = \(blog), type = \(type(of: blog))")
        if let id = blog["id"] {
            print("id = \(id)")
        }
        
        if let title = blog["title"] {
            print("title = \(title)")
        }
    }
    
    print("--")
    
    for blog in blogs {
        let id = blog["id"] as! Int
        let title = blog["title"] as! String
        
        print("id: \(id), title: \(title)")
    }
}

function2()



