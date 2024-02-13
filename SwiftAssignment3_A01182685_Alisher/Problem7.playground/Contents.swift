struct Circle {
    var radius: Double
    static let PI = 3.14
    
    var area: Double {
        return Circle.PI * radius * radius
    }
}

//test
var myCircle = Circle(radius: 8.0)
print(myCircle.radius)
print(Circle.PI)
print(myCircle.area)

