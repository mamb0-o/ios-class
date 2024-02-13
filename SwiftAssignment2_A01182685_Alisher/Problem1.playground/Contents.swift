//Problem part 1 Date

import Foundation
struct Date {
    var day: Int
    var month: Int
    var year: Int
    
    static func fromNumber(_ number: Int) -> Date? {
        if number < 1 || number > 365 {
            return nil
        }
        
        
        let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        
        var remainingDays = number
        var month = 1
        
        while remainingDays > daysInMonth[month - 1] {
            remainingDays -= daysInMonth[month - 1]
            month += 1
        }
        
        let day = remainingDays
        
        return Date(day: day, month: month, year: 2023) // Assuming the year is 2023
    }
}

print("Testing Date")
let date1 = Date.fromNumber(10)
print(date1)

let date2 = Date.fromNumber(300)
print(date2)

//Problem part 2 Enum
enum WeekDay: String {
    case sunday = "Sunday"
    case monday = "Monday"
    case tuesday = "Tuesday"
    case wednesday = "Wednesday"
    case thursday = "Thursday"
    case friday = "Friday"
    case saturday = "Saturday"
    
    static func getWeekDay(from date: Date) -> WeekDay? {
        
        let dateString = "\(date.year)-\(date.month)-\(date.day)"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        if let date = dateFormatter.date(from: dateString) {
            let calendar = Calendar(identifier: .gregorian)
            let weekDay = calendar.component(.weekday, from: date)
            
            let weekdays: [WeekDay] = [.sunday, .monday, .tuesday, .wednesday, .thursday, .friday, .saturday]
            
            return weekdays[weekDay - 1]
        }
        return nil
    }
}

print("Testing Enum")
let date = Date(day: 21, month: 7, year: 2023)
let weekDay = WeekDay.getWeekDay(from: date)
print(weekDay)

