//
//  BRSLabel.swift
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
