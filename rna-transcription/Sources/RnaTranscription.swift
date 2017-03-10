class Nucleotide{
    
    var complementOfDNA: String = ""
    
    init(_ DNA: String){
        for character in DNA.characters {
            switch character {
            case "G":
                complementOfDNA += "C"
            case "C":
                complementOfDNA += "G"
            case "T":
                complementOfDNA += "A"
            case "A":
                complementOfDNA += "U"
            default:
                print("not a nucleotide")
            }
        }
    }
}
