import Foundation

class Grains{
    
    enum GrainsError: Error{
        case inputTooHigh(String)
        case inputTooLow(String)
    }

    static var total: UInt64 {
        var tot: UInt64 = 0
        var grainInSquare: UInt64 = 1
        for index in 1...64 {
            tot += grainInSquare
            if(index < 64){
                grainInSquare  = grainInSquare * 2
            }
        }
        return tot
    }
    
    static func square(_ input: Int) throws -> UInt64 {
        if(input > 64){
            throw GrainsError.inputTooHigh("Input[" + String(input) + "] invalid. Input should be between 1 and 64 (inclusive)")
        }
        if(input < 1){
            throw GrainsError.inputTooLow("Input[" + String(input) + "] invalid. Input should be between 1 and 64 (inclusive)")
        }
                return UInt64(pow(2, Double(input - 1)))
    }
}
