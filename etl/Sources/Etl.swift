class ETL{
    
    static func transform(_ old: [Int: [String]]) -> [String: Int]{
        var newDictionary: [String: Int] = [:]
        for key in old.keys{
            for letter in old[key]!{
                newDictionary[letter.lowercased()] = key
            }
        }
        return newDictionary
    }
}
