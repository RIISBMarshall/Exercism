import Foundation

extension Array{
    
    func accumulate<T>(_ operation: (Element) -> T) -> [T]{
        var outputArray = [T]()
        for input in self{
            outputArray.append(operation(input))
        }
        return outputArray
    }
}
