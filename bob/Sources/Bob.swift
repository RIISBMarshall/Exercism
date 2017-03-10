import Foundation

class Bob {
    
    static func hey(_ input: String) -> String {
        if(input.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty){
            return "Fine, be that way."
        }
	if(input.uppercased() == input && input.lowercased() != input){
            return "Woah, chill out!"
        }
        if(input.hasSuffix("?")){
            return "Sure."
        }
        return "Whatever."
    }
}
