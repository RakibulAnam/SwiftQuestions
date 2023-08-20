//
//  main.swift
//  Custom Operators and Operator Overloading
//
//  Created by Jotno on 8/20/23.
//

import Foundation

infix operator ^^

func ^^(base: Int, exponent: Int) -> Int {
    return Int(pow(Double(base), Double(exponent)))
}

// Now you can use the ^ operator to calculate the power of two numbers
let base = 2
let exponent = 3
let result = base ^^ exponent
print("\(base) raised to the power of \(exponent) is \(result)")


