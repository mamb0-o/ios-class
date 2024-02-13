import UIKit

func filter(numbers: [Int], predicates: [(Int) -> Bool]) -> [Int]? {
    var filteredNumbers = [Int]()
    
    for number in numbers {
        var allPredicates = true
        
        for predicate in predicates {
            if !predicate(number) {
                allPredicates = false
                break
            }
        }
        
        if allPredicates {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers.isEmpty ? nil : filteredNumbers
    
}

let predicate1: (Int) -> Bool = { num in
    return num % 2 != 0
}

let predicate2: (Int) -> Bool = { num in
    if(num == 1 || num == 0){
         return false
      }

      for i in 2..<num{

         if (num % i == 0){
            return false
         }
      }
      return true
}

let predicate3: (Int) -> Bool = { num in
    return predicate1(num) && predicate2(num)
}

let predicate4: (Int) -> Bool = { num in
    return num % 7 == 0
}

let predicates = [predicate1, predicate2, predicate3, predicate4]

let numbers = [7, 13, 11, 17, 19, 23, 29, 37, 43, 47]
let filteredNumbers = filter(numbers: numbers, predicates: predicates)
print(filteredNumbers ?? "All of the numbers couldnt match all of the predicates")
