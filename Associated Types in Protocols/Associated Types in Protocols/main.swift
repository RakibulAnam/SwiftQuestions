//
//  main.swift
//  Associated Types in Protocols
//
//  Created by Jotno on 8/10/23.
//

import Foundation

protocol Container {
    
    associatedtype Element
    
    mutating func push(_ element:Element)
    mutating func pop() -> Element?
    
}

struct IntStack : Container{
    
    
    var stack : [Int] = []
    
    mutating func push(_ element: Int) {
        stack.append(element)
    }
    
    mutating func pop() -> Int? {
        return stack.popLast()
    }
    
    typealias Element = Int
    
    
}

struct IntQueue : Container{
    
    var queue : [Int] = []
    
    mutating func push(_ element: Int) {
        queue.append(element)
    }
    
    mutating func pop() -> Int? {
       return queue.removeFirst()
    }
    
    typealias Element = Int
    
    
}


var newQueue = IntQueue()
var newStack = IntStack()

newQueue.push(1)
newQueue.push(2)
newQueue.push(3)
newQueue.push(4)

print(newQueue)

var popped = newQueue.pop()

print(popped)

print(newQueue)
