
import Foundation

public extension Double {
    var toCelsius: Double {
        return self - 273.15
    }
    
    func toString(_ format: String) -> String {
        return String(format: format, self)
    }
}
