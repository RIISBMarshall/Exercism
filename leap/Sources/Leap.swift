class Year{
    
    var isLeapYear: Bool = false
    
    init(calendarYear: Int) {
        if(calendarYear % 100 == 0 && calendarYear % 400 != 0){
            isLeapYear = false
        }else {
            isLeapYear = (calendarYear % 4 == 0)
        }
    }
}


