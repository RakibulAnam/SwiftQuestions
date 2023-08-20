//
//  main.swift
//  Memory Management and Strong Reference Cycles
//
//  Created by Jotno on 8/20/23.
//

import Foundation

//  A strong reference cycle occurs when two or more reference types (such as classes) have properties that refer to each other, creating a cycle of strong references that prevent the objects from being deallocated by the automatic reference counting (ARC) system. This can lead to memory leaks, which means that the memory occupied by the objects is not freed even when they are no longer needed.

class Person{

  let name : String
  var friends : [Person] = []

  init(name: String){
    self.name = name
    print("Person  with name : \(name) initialized")
  }

  deinit{
    print("The Object was deInitialized")
  }
  
  
}

var man1 = Person(name: "Rohid")

var man2 = Person(name: "Tonny")

man1.friends.append(man2)
man2.friends.append(man1)

// Now even if the man2 is set to nil the object wont be deallocated, as it has a strong reference from  man1


