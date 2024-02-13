import UIKit

func sorter(_ list: [String]?, criteria by: (String, String) -> Bool) -> [String]? {
    guard let words = list else {
        return nil
    }
    
    let sortedWords = words.sorted(by: by)
    return sortedWords
}

let list1 = ["one", "two", "three", "four", "five"]
let sortedList1 = sorter(list1, criteria: { $0 < $1 })

print(sortedList1)

let list2 = ["one", "two", "three", "four", "five"]
let sortedList2 = sorter(list2, criteria: { $0 > $1 })

print(sortedList2)

let list3 = ["aa", "aba", "b", "aabbb"]
let sortedList3 = sorter(list3, criteria: { $0.count > $1.count })

print(sortedList3)
