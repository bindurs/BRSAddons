//
//  BRSLabel.swift
//

import UIKit

class BRSLabel: UILabel {
    
    var labelCornerRadius : CGFloat?
    var labelBorderColor: UIColor?
    var labelBorderWidth : CGFloat?
    
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
      
        backgroundColor = UIColor.black
        textColor = UIColor.white
    }
    
    
    override public func drawText(in rect:CGRect) {
        let insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
    
    //MARK:- Custom accessors
    
    func setLabelCornerRadius(labelCornerRadius:CGFloat) {
        self.layer.cornerRadius = labelCornerRadius
        self.sizeToFit()
    }
    
    func setLabelBorderWidth(labelBorderWidth:CGFloat) {
        self.layer.borderWidth = labelBorderWidth
        self.sizeToFit()
    }
    
    func setLabelBorderColor(labelBorderColor:UIColor) {
        self.layer.borderColor = labelBorderColor.cgColor
        self.sizeToFit()
    }

}
