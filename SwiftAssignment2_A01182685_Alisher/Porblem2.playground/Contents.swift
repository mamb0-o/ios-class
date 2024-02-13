struct Point {
    var x: Int
    var y: Int
    
    mutating func reset() {
        x = 0
        y = 0
    }
    
    func printPoint() {
        print("The point is at coordinate [\(x),\(y)].")
    }
    
    static func average(_ points: [Point], _ character: Character) -> Int? {
        guard character == "x" || character == "y" else {
            return nil
        }
        
        let values = character == "x" ? points.map { $0.x } : points.map { $0.y }
        let sum = values.reduce(0, +)
        return sum / values.count
    }
    
    static func vectorAverage(_ points: [Point]) -> Point {
        let averageX = average(points, "x") ?? 0
        let averageY = average(points, "y") ?? 0
        
        return Point(x: averageX, y: averageY)
    }
}

// Test
let points = [Point(x: 7, y: 14), Point(x: 4, y: 9), Point(x: 21, y: 32)]
var averagePoint = Point.vectorAverage(points)
averagePoint.printPoint()
Point.average(points, "x")
averagePoint.printPoint()
averagePoint.reset()
averagePoint.printPoint()
