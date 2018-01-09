//
//  BRSLabel.swift
//

import UIKit

class BRSLabel: UILabel {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    public override init (frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    func setup () {
        layer.cornerRadius = 5
        layer.borderColor = UIColor(red:0.10, green:0.23, blue:0.39, alpha:1.0).cgColor
        layer.borderWidth = 2
        backgroundColor = UIColor.black
        textColor = UIColor.white
    }
    
    
    override public func drawText(in rect:CGRect) {
        let insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }

}
