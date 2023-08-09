//
//  main.swift
//  Computed Properties and Lazy Initialization
//
//  Created by Jotno on 8/9/23.
//

import Foundation

class Circle{
    
    let radius : Double
    lazy var area : Double = {
        return 3.14 * radius * radius
    }()
    
    init(radius: Double) {
        self.radius = radius
    }
    
}


var circle = Circle(radius: 5.0)

print("Radius \(circle.radius)")
// This is the first time area is calculated as it is initialized as lazy, so it is initialized at the first instance it is called
print("Area \(circle.area)")
