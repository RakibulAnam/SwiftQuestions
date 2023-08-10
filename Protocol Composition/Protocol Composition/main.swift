//
//  main.swift
//  Protocol Composition
//
//  Created by Jotno on 8/10/23.
//

import Foundation

protocol Flyable {
    
    func fly()
}

protocol Swimable{
    func swim()
}


class Duck :Flyable,Swimable{
    func fly() {
        print("Duck is Flying")
    }
    
    func swim() {
        print("Duck is Swimming")
    }
    
    
}


func swimAndFly(object : Flyable & Swimable){
    object.fly()
    object.swim()
}


var duck = Duck()

swimAndFly(object: duck)
