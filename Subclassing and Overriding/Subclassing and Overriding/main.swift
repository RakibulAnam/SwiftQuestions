//
//  main.swift
//  Subclassing and Overriding
//
//  Created by Jotno on 8/14/23.
//

import Foundation

class Animal {
    
    func makeSound(){
        print("Animal Makes Sound")
    }
    
}

class Dog : Animal{
    
    override func makeSound() {
        print("Dog Makes Sound")
    }
    
}


class Cat : Animal{
    
    override func makeSound() {
        print("Cat Makes Sound")
    }
    
}

let animal = Animal()
let dog = Dog()
let cat = Cat()

animal.makeSound()
dog.makeSound()
cat.makeSound()
