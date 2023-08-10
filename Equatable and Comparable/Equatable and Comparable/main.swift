//
//  main.swift
//  Equatable and Comparable
//
//  Created by Jotno on 8/10/23.
//

import Foundation

struct Person : Equatable, Comparable{
    
    
    var name: String
    var age : Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    
    static func < (lhs: Person, rhs: Person) -> Bool {
        return lhs.age < rhs.age
    }
    
    
}


var man1 = Person(name: "Rohidd", age: 25)
var man2 = Person(name: "Rohid", age: 19)
var man3 = Person(name: "Mohit", age: 19)

// Eqatable check the objects completely to see if their porperties are same or not and then returns a boolean
if(man1 == man2){
    print("Same People")
}else{
    print("not same")
}
// Comparable compares the properties of an object
if(man2 > man3){
    print("\(man2.name) is older than \(man3.name)")
}else if (man2 < man3){
    print("\(man2.name) is younger than \(man3.name)")
}else{
    print("They equal")
}
