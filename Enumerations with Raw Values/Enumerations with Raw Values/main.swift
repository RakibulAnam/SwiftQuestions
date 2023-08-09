//
//  main.swift
//  Enumerations with Raw Values
//
//  Created by Jotno on 8/9/23.
//

import Foundation

enum Weekday : String{
    
    case day1 = "Sunday"
    case day2 = "Monday"
    case day3 = "Tuesday"
    case day4 = "Wednesday"
    case day5 = "Thursday"
    case day6 = "Friday"
    case day7 = "Saturday"
    
}


func days(day : Weekday) -> String{
    
    switch day {
    case .day1:
        return day.rawValue
    case .day2:
        return day.rawValue
    case .day3:
        return day.rawValue
    case .day4:
        return day.rawValue
    case .day5:
        return day.rawValue
    case .day6:
        return day.rawValue
    case .day7:
        return day.rawValue
    }
    
    
  
    
}

print(days(day: .day2))
