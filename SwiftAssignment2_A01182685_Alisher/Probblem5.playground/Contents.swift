struct Student {
    let firstName: String
    let lastName: String
    let address: String
    let yearOfBirth: Int
    let gpa: Double
    
    static func printStudent(_ student: Student) {
        print("First Name: \(student.firstName)")
        print("Last Name: \(student.lastName)")
        print("Address: \(student.address)")
        print("Year of Birth: \(student.yearOfBirth)")
        print("GPA: \(student.gpa)")
    }
}

class Classroom {
    var students: [Student] = []
    
    func generateList() {
        let firstNames = ["Ali", "Alireza", "Alisher", "Beanie", "Jackie", "Jason", "Ying", "Li", "Adam", "Raymond"]
        let lastNames = ["Alsaadiq", "Davoodi", "Shamayev", "Kim", "Ho", "Hoang", "Su", "Qiu", "Van Woerden", "Yan"]
        let addresses = ["Burnaby", "gastown", "coquitlam", "commercial", "metrotown", "surrey", "main st", "chinatown", "lougheed", "Yaletown"]
        
        for _ in 1...10 {
            let firstName = firstNames.randomElement() ?? ""
            let lastName = lastNames.randomElement() ?? ""
            let address = addresses.randomElement() ?? ""
            let yearOfBirth = Int.random(in: 1990...2001)
            let gpa = Double.random(in: 1.0...4.0)
            
            let student = Student(firstName: firstName, lastName: lastName, address: address, yearOfBirth: yearOfBirth, gpa: gpa)
            students.append(student)
        }
    }
    
    func getHighestGpa() -> Student? {
        guard let student = students.max(by: { $0.gpa < $1.gpa }) else {
            return nil
        }
        
        Student.printStudent(student)
        return student
    }
}

//Testing
let classroom = Classroom()
classroom.generateList()
classroom.getHighestGpa()
