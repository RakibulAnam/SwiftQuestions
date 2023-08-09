//
//  main.swift
//  Subscripts
//
//  Created by Jotno on 8/9/23.
//

import Foundation


class Matrix{
    
    var grid : [[Int]] = []
    
    
    subscript(row:Int, coloumn: Int) -> Int {
        
        get{
            return grid[row][coloumn]
        }
        set{
            grid[row][coloumn] = newValue
        }
        
    }
    
    
}


var matrix = Matrix()

matrix.grid = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

print(matrix.grid)

print(matrix[0, 0])

matrix[0,0] = 10

print(matrix.grid)



