//
//  main.swift
//  Property Observer
//
//  Created by Jotno on 8/10/23.
//

import Foundation

class Temperature{
    var celsius : Int {
        
        
        // This wil be called after setting a new value to the property 
        didSet{
            
            print("The celcius property was set with the value \(celsius)")
            
        }
        
        // This will be called before setting a new value to the property and the proerty will be set
        willSet(newTemp){
            print("The difference between new and old temperature is \(newTemp-celsius)")
        }
        
    }
    
    init(celsius : Int) {
        self.celsius = celsius
    }
}

var temperature = Temperature(celsius: 10)

temperature.celsius = 50



