
import Foundation

public protocol OptionalCheck { }
extension Int: OptionalCheck { }
extension String: OptionalCheck { }
extension UIImage: OptionalCheck { }

public extension Optional where Wrapped: OptionalCheck {
    var isEmptyString: Bool {
        return ((self as? String) ?? "").isEmpty
    }
    
    var isNil: Bool {
        guard case Optional.none = self else { return false }
        return true
    }
    
    var isSome: Bool {
        return !self.isNil
    }
}
