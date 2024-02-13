import UIKit

let arithmeticOperations = ["sum", "division", "difference", "power", "multiplication"]

func sum(_ x: Int, _ y: Int) -> Double {
    return Double(x + y)
}

func division(_ x: Int, _ y: Int) -> Double {
    return Double(x) / Double(y)
}

func difference(_ x: Int, _ y: Int) -> Double {
    return Double(x - y)
}

func power(_ x: Int, _ y: Int) -> Double {
    return pow(Double(x), Double(y))
}

func multiplication(_ x: Int, _ y: Int) -> Double {
    return Double(x * y)
}

let Dictionary: [String: (Int, Int) -> Double] = [
    "sum": sum,
    "division": division,
    "difference": difference,
    "power": power,
    "multiplication": multiplication
]

func calculator(_ x: Int, _ y: Int, operation: String) -> (Double, (Int, Int) -> Double)? {
    if let Dictionary = Dictionary[operation] {
        let output = Dictionary(x, y)
        return (output, Dictionary)
    }
    return nil
}

for mainLoop in arithmeticOperations {
    let x = 50
    let y = 21
    if let (output, Dictionary) = calculator(x, y, operation: mainLoop) {
        print("\(mainLoop): \(x) \(mainLoop) \(y) = \(output)")
    } else {
        print("Invalid operation: \(mainLoop)")
    }
}
