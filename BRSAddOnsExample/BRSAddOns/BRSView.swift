//
//  BRSView.swift
//
import UIKit

class BRSView: UIView {
    
    var viewCornerRadius : CGFloat?
    var viewBorderColor: UIColor?
    var viewBorderWidth : CGFloat?
    
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
    }
    
    //MARK:- Custom accessors
    
    func setViewCornerRadius(viewCornerRadius:CGFloat) {
        self.layer.cornerRadius = viewCornerRadius
        self.sizeToFit()
    }
    
    func setViewBorderWidth(viewBorderWidth:CGFloat) {
        self.layer.borderWidth = viewBorderWidth
        self.sizeToFit()
    }
    
    func setViewBorderColor(viewBorderColor:UIColor) {
        self.layer.borderColor = viewBorderColor.cgColor
        self.sizeToFit()
    }
}
