//
//  BRSTextField.swift
//

import UIKit

class BRSTextField: UITextField {
    
    var textFieldCornerRadius : CGFloat?
    var textFieldBorderColor: UIColor?
    var textFieldBorderWidth : CGFloat?
    
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
        
        backgroundColor = UIColor.white
        textColor = UIColor.black
    }
    
    
    override public func textRect(forBounds bounds: CGRect) -> CGRect {
        let margin: CGFloat = 15
        let inset = CGRect(x: bounds.origin.x + margin, y: bounds.origin.y, width: bounds.size.width - margin, height: bounds.size.height)
        return inset
    }
    
    override public func editingRect(forBounds bounds: CGRect) -> CGRect {
        let margin: CGFloat = 10
        let inset = CGRect(x: bounds.origin.x + margin, y: bounds.origin.y, width: bounds.size.width - margin, height: bounds.size.height)
        return inset
    }
    
    //MARK:- Custom accessors
    
    func setTextFieldCornerRadius(textFieldCornerRadius:CGFloat) {
        self.layer.cornerRadius = textFieldCornerRadius
        self.sizeToFit()
    }
    
    func setTextFieldBorderWidth(textFieldBorderWidth:CGFloat) {
        self.layer.borderWidth = textFieldBorderWidth
        self.sizeToFit()
    }
    
    func setTextFieldBorderColor(textFieldBorderColor:UIColor) {
        self.layer.borderColor = textFieldBorderColor.cgColor
        self.sizeToFit()
    }
}
