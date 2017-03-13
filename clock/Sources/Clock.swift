import Foundation

class Clock : CustomStringConvertible, Equatable {
    
    var description: String{
        var min = 0
        var hours = 0
        var minutes = 0
        if(totalMinutes < 0){
            min = 1440 + (totalMinutes % 1440)
        }else{
            min = totalMinutes
        }
        hours = (min / 60) % 24
        minutes = min % 60
        return String(format: "%02d", hours) + ":" + String(format: "%02d", minutes)
    }
    
    var totalMinutes = 0
    
    init(hours: Int, minutes: Int = 0){
        totalMinutes = (hours * 60) + minutes
    }
    
    func add(minutes: Int) -> Clock{
        totalMinutes += minutes
        return self
    }
    
    func subtract(minutes: Int) -> Clock{
        totalMinutes -= minutes
        return self
    }
    
    static func == (clock1: Clock, clock2: Clock) -> Bool{
        return String(describing: clock1) == String(describing: clock2)
    }
}
