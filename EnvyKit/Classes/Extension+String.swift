
import Foundation

public extension String {
    
    var won: String {
        return "\(self)원"
    }
    
    func toInt() -> Int {
        return Int(self) ?? 0
    }
    
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func limitTextCount(_ maxLength: Int) -> String {
        let index = self.index(self.startIndex, offsetBy: maxLength)
        let newString = self[self.startIndex ..< index]
        
        return String(newString)
    }
    
    func isValidation(_ pattern: String) -> Bool { // Validation
        let predicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        return predicate.evaluate(with: self)
    }
    
    func removeDecimalDigits() -> String {
        return self.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
    }
}
