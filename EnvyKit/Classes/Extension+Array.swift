
import Foundation

public extension Array {
    func splitRange(_ index: UInt) -> Array {
        guard self.count >= index else { return [] }
        
        let result = self[0...Int(index)]
        return Array(result)
    }
}
