import Foundation

//Solution goes in Sources
class Gigasecond{
    let description: String
    
    init?(from: String){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT")
        
        let date = dateFormatter.date(from: from)
        
        let newDate = date?.addingTimeInterval(pow(10.0, 9.0))
        
        description = dateFormatter.string(from: newDate!)
    }
}



