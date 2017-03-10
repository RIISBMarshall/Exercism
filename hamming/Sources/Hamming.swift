class Hamming{
    static func compute(_ dna1: String, against: String) -> Int?{
        var count :Int?
        if(dna1.characters.count == against.characters.count){
            count = 0
            for index in dna1.characters.indices {
                if(dna1[index] != against[index]){
                    count? += 1
                }
            }
        }
        return count
    }
}
