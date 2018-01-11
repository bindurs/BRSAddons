//
//  BRSTextField.swift
//  MIT License
//
//  Copyright © 2018 bindurs
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

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
