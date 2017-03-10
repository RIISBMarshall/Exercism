class SumOfMultiples{
    
    static func toLimit(_ number: Int, inMultiples: [Int]) -> Int{
        var sum = 0
        for index in 0..<number{
            var num = 0
            for multiple in inMultiples{
                if(multiple > 0 && index % multiple == 0){
                    num = index
                }
            }
            sum += num
        }
        return sum
    }
}
