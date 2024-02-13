class Search {
    var numbers: [Int] = []
    
    func reset() {
        numbers = []
    }
    
    func randomFill() {
        for _ in 1...10 {
            let randomNum = Int.random(in: 1...50)
            numbers.append(randomNum)
        }
    }
    
    static func linearSearch(list: [Int], number: Int) -> Bool {
        for num in list {
            if num == number {
                return true
            }
        }
        return false
    }
}

//Test
let search = Search()

search.randomFill()
print(search.numbers)

let found = Search.linearSearch(list: search.numbers, number: 21)
print(found)

let found2 = Search.linearSearch(list: search.numbers, number: 8)
print(found2)

search.reset()
print(search.numbers)

