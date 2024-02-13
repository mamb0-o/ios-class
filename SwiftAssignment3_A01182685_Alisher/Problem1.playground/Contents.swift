class Student {
    let name: String
    let scores: [Double]
    
    var average: Double {
        return scores.reduce(0, +) / Double(scores.count)
    }
    
    init(name: String, scores: [Double]) {
        self.name = name
        self.scores = scores
    }
}

//Testing
let studentList = [
    Student(name: "Ali", scores: [20, 40, 60]),
    Student(name: "Alireza", scores: [99, 81, 90]),
    Student(name: "Ying", scores: [90, 90, 90])
]

var topStudent: Student? = nil
var highAverage: Double = 0

for i in studentList {
    if i.average > highAverage {
        highAverage = i.average
        topStudent = i
    }
}

if let topStudent = topStudent {
    print("The top-ranked student: \(topStudent.name) ")
} else {
    print("Student not found")
}

