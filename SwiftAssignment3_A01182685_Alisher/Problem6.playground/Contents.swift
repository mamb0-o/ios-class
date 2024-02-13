func missingNumbers(array1: [Int], array2: [Int]) -> [Int] {
    var dict1 = [Int: Int]()
    var dict2 = [Int: Int]()

    for num in array1 {
        dict1[num, default: 0] += 1
    }

    for num in array2 {
        dict2[num, default: 0] += 1
    }

    var missing = [Int]()

    for (num, freq) in dict2 {
        if dict1[num, default: 0] < freq {
            missing.append(num)
        }
    }

    return missing.sorted()
}

//Test
let array1 = [203, 204, 205, 206, 207, 208, 203, 204, 205, 206]
let array2 = [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 205, 206, 204]
let result = missingNumbers(array1: array1, array2: array2)
print(result)

