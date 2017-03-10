import Foundation

class GradeSchool{
    
    var roster = [Int: [String]]()
 
    func addStudent(_ studentName: String, grade: Int){
        if(roster[grade]?.isEmpty == nil){
            roster[grade] = [studentName]
        }else{
            roster[grade]?.append(studentName)
        }
    }
    
    func studentsInGrade(_ grade: Int) -> [String]{
        if(roster[grade]?.isEmpty == nil){
            return [String]()
        }
        return roster[grade]!
    }
}
