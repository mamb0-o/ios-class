class MySort {
    var items: [Int]
    
    init(items: [Int]) {
        self.items = items
    }
    
    var sorting: ([Int]) -> Void {
        return { _ in }
    }
}

class MyBubbleSort: MySort {
    override var sorting: ([Int]) -> Void {
        return { [weak self] items in
            guard let self = self else { return }
            
            var sortedItems = items
            
            for i in 0..<sortedItems.count {
                for j in 0..<(sortedItems.count - i - 1) {
                    if sortedItems[j] > sortedItems[j + 1] {
                        sortedItems.swapAt(j, j + 1)
                    }
                }
            }
            
            self.items = sortedItems
        }
    }
}

class MyInsertionSort: MySort {
    override var sorting: ([Int]) -> Void {
        return { [weak self] items in
            guard let self = self else { return }
            
            var sortedItems = items
            
            for i in 1..<sortedItems.count {
                let key = sortedItems[i]
                var j = i - 1
                
                while j >= 0 && sortedItems[j] > key {
                    sortedItems[j + 1] = sortedItems[j]
                    j -= 1
                }
                
                sortedItems[j + 1] = key
            }
            
            self.items = sortedItems
        }
    }
}

// Test
let bubbleSort = MyBubbleSort(items: [20,21,1,34,56,98,9,0])
bubbleSort.sorting(bubbleSort.items)
print("Bubble Result: \(bubbleSort.items)")

let insertionSort = MyInsertionSort(items: [20,21,1,34,56,98,9,0])
insertionSort.sorting(insertionSort.items)
print("Insertion Result: \(insertionSort.items)")

