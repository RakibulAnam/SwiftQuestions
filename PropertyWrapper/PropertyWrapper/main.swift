//
//  main.swift
//  PropertyWrapper
//
//  Created by Jotno on 9/4/23.
//

import Foundation

@propertyWrapper
struct Clamped {
    var max :Int
    var min : Int
    var value : Int
    var wrappedValue: Int{
        get{
            return value
        }
        set{
            if newValue <= max && newValue >= min{
                value = newValue
            }else {
                value = 0
            }
        }
    }
    
    init(max: Int, min: Int, wrappedValue : Int) {
        self.max = max
        self.min = min
        self.value = wrappedValue
    }
    
}


struct Person{
    @Clamped(max: 100, min: 0, wrappedValue: 0) var age : Int
}


var person = Person()

person.age = 20

print(person.age)

person.age = -5

print(person.age)

person.age = 120

print(person.age)



