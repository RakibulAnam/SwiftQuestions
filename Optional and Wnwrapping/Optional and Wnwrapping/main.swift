//
//  main.swift
//  Optional and Wnwrapping
//
//  Created by Jotno on 9/4/23.
//

import Foundation

/*
 
 optionals are used to handle the absence of a value. In swift varibles by nefault cannot be nil, thus optionals provide a way to handle scenarios where there might be a nil value
 
 
 */


func getName(name:String?){
    if let safeName = name{
        print("The name entered is \(safeName)")
    }else {
        print("No Name Found")
    }
}

getName(name: nil)
