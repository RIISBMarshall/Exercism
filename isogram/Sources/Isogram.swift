import Foundation

class Isogram{
    
    static func isIsogram(_ word: String) -> Bool{
        for index in word.characters.indices{
            let letter = word.characters[index]
            if(CharacterSet.letters.contains(letter.description.unicodeScalars.first!)){
                let indexOfNext = word.index(index, offsetBy: 1)
                for otherLetter in word.substring(from: indexOfNext).characters{
                    if(letter.description.lowercased() == otherLetter.description.lowercased()){
                        return false
                    }
                }
            }
        }
        return true
    }
}
