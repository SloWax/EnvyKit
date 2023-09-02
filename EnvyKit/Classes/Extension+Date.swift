
import Foundation

public extension Date {
    func toString(dateFormat format: String = "yyyy년 MM월") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone.autoupdatingCurrent
        dateFormatter.locale = Locale(identifier: "ko")
        
        return dateFormatter.string(from: self)
    }
    
    static func getPastYears(forLastNYears nYears: Int) -> Date {
        let cal = NSCalendar.current
        var date = cal.startOfDay(for: Date())
        date = cal.date(byAdding: Calendar.Component.year, value: -nYears, to: date)!

        return date
    }
}
