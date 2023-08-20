//
//  main.swift
//  String Interpolation and CustomStringConvertible
//
//  Created by Jotno on 8/20/23.
//

import Foundation

class Book {
    var title: String
    var author: String
    var year: Int
    
    init(title: String, author: String, year: Int) {
        self.title = title
        self.author = author
        self.year = year
    }
}


extension Book : CustomStringConvertible{

    var description: String {
        return "\"\(title)\" by \(author) (\(year))"
    }
  
}


// when called the book object the description variable will bee returned

let book = Book(title: "The Catcher in the Rye", author: "J.D. Salinger", year: 1951)
print("My favorite book is \(book)")

