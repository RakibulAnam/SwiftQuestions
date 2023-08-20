//
//  main.swift
//  Protocol with Associated Type Constraints
//
//  Created by Jotno on 8/20/23.
//

import Foundation

protocol Container {
    
    associatedtype Element
    
    func operation()-> Element
    
}


class IntArrayContainer : Container{
    
    
    typealias Element = Int
    
    var elements : [Int] = []
    func operation() -> Int {
        let sum = elements.reduce(0) { $0 + $1 }
        
        return sum
    }
    
    
}


class StringArrayContainer : Container{
    
    var sArray : [String] = []
    
    
    typealias Element = String
    
    func operation() -> String {
     
        for str in sArray{
            if str.count == 3 {
                return str
            }
            
        }
        return ""
    }
}

var strArray = StringArrayContainer()

strArray.sArray = ["Dog", "Dino", "Hero"]

print(strArray.operation())
