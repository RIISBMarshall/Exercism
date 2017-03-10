import Foundation

class DNA{
    
    var dna: String?
    init?(strand: String){
        for character in strand.characters{
            if (character == "A" || character == "C" || character == "G" || character == "T"){
                
            }else{
                return nil
            }
        }
        dna = strand
    }
    
    func count(_ nuc: Character) -> Int{
        var num = 0
        for character in dna!.characters{
            if(nuc == character){
                num += 1
            }
        }
        return num
    }
    
    func counts() -> [String: Int]{
        var aCount = 0
        var cCount = 0
        var gCount = 0
        var tCount = 0
        
        for character in dna!.characters {
            
            switch character{
            case "A":
                aCount += 1
            case "C":
                cCount += 1
            case "G":
                gCount += 1
            case "T":
                tCount += 1
            default:
                print("not a nucleotide")
            }
        }
        return [ "A": aCount, "T": tCount, "C": cCount, "G": gCount]
    }
}	
