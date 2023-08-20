//
//  main.swift
//  Custom Codable Implementation
//
//  Created by Jotno on 8/20/23.
//

import Foundation

struct User : Codable{
    
    let name : String
    let age : Int
    let address : String

    init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
    }
    
}


let users = [
User(name: "Rohid", age: 10, address: "Dhaka"),
User(name: "Mohit", age: 9, address: "Khulna"),
User(name: "Elma", age: 8, address: "London")
]

let encoder = JSONEncoder()

let jsonData = try! encoder.encode(users)
let jsonString = String(data: jsonData, encoding: .utf8)!

print(jsonString)


let decoder = JSONDecoder()

let decodedUser = try! decoder.decode([User].self, from: jsonData)

print(decodedUser)


