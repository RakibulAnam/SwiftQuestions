//
//  main.swift
//  Custom Operators
//
//  Created by Jotno on 8/13/23.
//

import Foundation

infix operator +++


func +++(lhs : String , rhs: String) -> String{
    
    var concatinate = "\(lhs) \(rhs)"
    return concatinate
}


var fName = "Rakibul"
var lName = "Anam"

print(fName+++lName)

print(lName+++fName)
