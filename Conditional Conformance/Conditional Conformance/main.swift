//
//  main.swift
//  Conditional Conformance
//
//  Created by Jotno on 8/20/23.
//

import Foundation


struct OptionalArray<T> {

  var elements : [T]

   init(elements: [T]) {
        self.elements = elements
    }
  
}

extension OptionalArray: Equatable where T: Equatable {
    static func == (lhs: OptionalArray<T>, rhs: OptionalArray<T>) -> Bool {
        return lhs.elements == rhs.elements
    }
}

let array1 = OptionalArray(elements: [1, 2, 3, 4]) // Int is equatable
let array2 = OptionalArray(elements: [1, 2, 3, 4])
let array3 = OptionalArray(elements: [1, 2, 7, 4])

print(array1 == array2) // true
print(array1 == array3) // false

// INT conforms to equitable protocol so whent the element in optional array  is in
// it  does not show error

//Point does not compare to   equitable prootocol so it   will show error

struct Point {
    var x: Double
    var y: Double
}

let array4 = OptionalArray(elements: [Point(x: 0, y: 0), nil, Point(x: 1, y: 1)])
let array5 = OptionalArray(elements: [Point(x: 0, y: 0), nil, Point(x: 1, y: 1)])

// Shows error
/*
print(array4 == array5)
*/

