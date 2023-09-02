
import Foundation

public extension Int {
    var comma: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        return numberFormatter.string(from: self as NSNumber) ?? ""
    }
}
