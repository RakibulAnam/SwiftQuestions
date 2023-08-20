//
//  main.swift
//  Type Casting
//
//  Created by Jotno on 8/20/23.
//

import Foundation

protocol Shape {

func  draw()
  
}

class Circle : Shape{
  func draw(){
    print("Drawing From Circle")
  }
}


class Rectangle : Shape{
  func draw(){
    print("Drawing From Rectangle")
  }
}

func conform(shape: [Shape]){

  for shape in shape{
    if let circle = shape as? Circle{
      circle.draw()
    }
  }
  
}

let c1 = Circle()
let c2 = Circle()
let c3 = Circle()

let r1 = Rectangle()
let r2 = Rectangle()
let r3 = Rectangle()

var shapeArray : [Shape]  = [c1,c3,r1]

conform(shape: shapeArray)


