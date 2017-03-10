import Foundation

class Squares{
    
    var differenceOfSquares: Double = 0.0
    
    var sumOfSquares: Double = 0.0
    
    var squareOfSums: Double = 0.0

    init(_ n: Int){
    var sum = 0
    
    for index in 1...n {
        sum += index
    }
    
    squareOfSums = pow(Double(sum), 2)
    
    
    for index in 1...n {
        sumOfSquares += pow(Double(index), 2)
    }
        
    differenceOfSquares = squareOfSums - sumOfSquares
    }
}

