enum Calculator {
    case sum
    case subtraction
    case multiplication
    case division

    func calculate(num1: Int, num2: Int) -> Int {
        switch self {
        case .sum:
            return num1 + num2
        case .subtraction:
            return num1 - num2
        case .multiplication:
            return num1 * num2
        case .division:
            return num1 / num2
        }
    }
}

//Test
let num1 = 8
let num2 = 11

let sumResult = Calculator.sum.calculate(num1: num1, num2: num2)
print("Sum of \(num1) and \(num2): \(sumResult)")

let subtractionResult = Calculator.subtraction.calculate(num1: num1, num2: num2)
print("Subtraction of \(num1) and \(num2): \(subtractionResult)")

let multiplicationResult = Calculator.multiplication.calculate(num1: num1, num2: num2)
print("Multiplication of \(num1) and \(num2): \(multiplicationResult)")

let divisionResult = Calculator.division.calculate(num1: num1, num2: num2)
print("Division of \(num1) and \(num2): \(divisionResult)")

