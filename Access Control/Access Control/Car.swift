//
//  Car.swift
//  Access Control
//
//  Created by Jotno on 8/14/23.
//

import Foundation

public class Car{
    
    private var engine = Engine()
    
    func start(){
        engine.start()
    }
    
}

private class Engine{
    
    func start(){
        print("Starting Engine")
    }
    
}
