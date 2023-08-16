//
//  main.swift
//  Higher-Order Functions
//
//  Created by Jotno on 8/16/23.
//

import Foundation

func applyOperation (_ n1: Int, _ n2: Int, _ operation: (Int,Int)->Int) -> Int{

return operation(n1,n2)
  
}


func add(n1: Int, n2: Int) -> Int{
  return n1 + n2
}

func subtract(n1: Int, n2: Int) -> Int{
  return n1 - n2
}

func multiply(n1: Int, n2: Int) -> Int{
  return n1 * n2
}

func divide(n1: Int, n2: Int) -> Int{
  return n1 / n2
}

print(applyOperation(1,2,add))
print(applyOperation(4,2,subtract))
print(applyOperation(3,2,multiply))
print(applyOperation(12,2,divide))


