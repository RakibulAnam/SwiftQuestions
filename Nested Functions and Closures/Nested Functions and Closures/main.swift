//
//  main.swift
//  Nested Functions and Closures
//
//  Created by Jotno on 8/16/23.
//

import Foundation

func calculator(_ n1: Int, _ n2 :  Int, _ op:  String) -> (Int,Int)-> Int{
 

    switch op {
      case "+" :
     return  { (a: Int, b: Int) in
               a + b
     }

      case "-" :
      return  { (a: Int, b: Int) in
               a - b
     }

      case "*" :
      return  { (a: Int, b: Int) in
               a * b
     }

      case "/" :
      return  { (a: Int, b: Int) in
               a / b
     }

      default:
      return { (a: Int, b: Int) in
               0
    }
    

}
}

 let add = calculator(2,3,"+")
 print(add(2,3))

 let sub = calculator(2,2,"-")
 print(sub(2,2))

 let mul = calculator(3,2,"*")
 print(mul(2,3))

 let div = calculator(4,2,"/")
 print(div(4,2))


