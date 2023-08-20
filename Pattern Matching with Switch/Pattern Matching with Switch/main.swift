//
//  main.swift
//  Pattern Matching with Switch
//
//  Created by Jotno on 8/20/23.
//

import Foundation



func patternMatch<T>(type : T){
    
    switch type{
        
    case  is Int:
        print("It's an Integer")
        
    case  is String:
        print("It's a String")
        
    case  is Double:
        print("It's a Double")
        
    default:
        print("Type not found")
    }
    
}

patternMatch(type: 20.5)

