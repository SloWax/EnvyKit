
import Foundation

public extension CGFloat {
    
    func aspectRatio(ratio denominator: CGFloat, _ numerator: CGFloat) -> CGFloat {
        let ratio = numerator / denominator
        return self * ratio
    }
}
