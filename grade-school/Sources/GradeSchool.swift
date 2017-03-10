struct GradeSchool
{
   var roster: [Int: Set<String>] = [:]
   
   mutating func addStudent(_ name: String, grade: Int)
   {
      var rosterGrade = roster[grade] ?? []
      rosterGrade.insert(name)
      roster.updateValue(Set(rosterGrade.sorted()), forKey: grade)
   }
   
   func studentsInGrade(_ grade: Int) -> Set<String>
   {
      return roster[grade] ?? Set<String>()
   }
   
   var sortedRoster: [Int: Set<String>] {
      return roster
   }
}

