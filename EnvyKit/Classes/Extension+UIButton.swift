
import UIKit

public extension UIButton {
    
    func setBackgroundColor(sel: UIColor, nor: UIColor) {
        self.setBackgroundImage(UIImage(color: nor), for: .normal)
        self.setBackgroundImage(UIImage(color: sel), for: .highlighted)
        self.setBackgroundImage(UIImage(color: sel), for: .selected)
    }
    
    func setBackgroundColor(dis: UIColor, nor: UIColor) {
        self.layer.masksToBounds = true
        self.setBackgroundImage(UIImage(color: nor), for: .normal)
        self.setBackgroundImage(UIImage(color: dis), for: .disabled)
    }
    
    func setImage(sel: String, nor: String) {
        self.setImage(UIImage(named: nor), for: .normal)
        self.setImage(UIImage(named: sel), for: .highlighted)
        self.setImage(UIImage(named: sel), for: .selected)
    }
    
    // button image + text 세로배치
    func imageTextVertically(offset: CGFloat = 0, spacing: CGFloat = 0) {
        if let imageSize = imageView?.frame.size,
            let titleSize = titleLabel?.frame.size {
            let totalHeight = (imageSize.height + titleSize.height + offset)

            imageEdgeInsets = UIEdgeInsets(top: -(totalHeight - imageSize.height) + spacing, left: 0.0, bottom: 0.0, right: -titleSize.width)
            titleEdgeInsets = UIEdgeInsets(top: 0.0, left: -imageSize.width - spacing, bottom: -(totalHeight - titleSize.height), right: -spacing)
        }
    }
    
    // button image + text 가로배치
    func imageTextHorizontally(spacing: CGFloat) {
        let insetAmount = spacing / 2
        let isRTL = UIView.userInterfaceLayoutDirection(for: semanticContentAttribute) == .rightToLeft
        if isRTL {
            imageEdgeInsets = UIEdgeInsets(top: 0, left: insetAmount, bottom: 0, right: -insetAmount)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -insetAmount, bottom: 0, right: insetAmount)
            contentEdgeInsets = UIEdgeInsets(top: 0, left: -insetAmount, bottom: 0, right: -insetAmount)
        } else {
            imageEdgeInsets = UIEdgeInsets(top: 0, left: -insetAmount, bottom: 0, right: insetAmount)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: insetAmount, bottom: 0, right: -insetAmount)
            contentEdgeInsets = UIEdgeInsets(top: 0, left: insetAmount, bottom: 0, right: insetAmount)
        }
    }
}
