//
//  main.swift
//  Map-Filter and Reduce
//
//  Created by Jotno on 8/9/23.
//

import Foundation



// MAP

// MAP returns an Array after performing an operation on each element of the array
func doubleArray(array : [Int]) -> [Int]{
    
    var newArray =  array.map { int in
        return int * 2
    }
    return newArray
}

//Filter

// FLITER returns an array using the given condition
func getEven(array : [Int])-> [Int]{
    var newArray =  array.filter { int in
      int % 2 == 0
    }
    return newArray
}

// Reduce
// Reduce returns a single data not an array afte fulfillig the Conditions we give
func totalSum(array : [Int])-> Int{
    var newArray = array.reduce(0) { partialResult, elementInArray in
        partialResult + elementInArray
    }
    
    return newArray
}


var testArray = [1,2,3,4,5,6,7,8,9,10]

print(testArray)

print("Doubling our Array \(doubleArray(array: testArray))")
print("Getting Even from our Array \(getEven(array: testArray))")
print("Getting Sum of our Array our Array \(totalSum(array: testArray))")


