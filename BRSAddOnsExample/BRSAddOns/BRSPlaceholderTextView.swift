//
//  BRSPlaceholderTextView.swift
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

class BRSPlaceholderTextView: UITextView {
    
    private let kLabelLeftOffset: CGFloat = 8.0
    private let kLabelTopOffset: CGFloat = 0.0
    
    private let kLabelTopOffsetFromIB: CGFloat = 8.0
    private let kLabelTopOffsetRetina: CGFloat = 0.5
    
    var placeholderLabel : UILabel?
    var topLabelOffset:CGFloat?
    var placeholderText:String?
    var placeholderColor:UIColor?
    var placeholderFont:UIFont?
    var textViewBorderWidth:CGFloat?
    var textViewCornerRadius:CGFloat?
    var textViewBorderColor:UIColor?
    var textViewTintColor:UIColor?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        topLabelOffset = kLabelTopOffsetFromIB
        finishInitialization()
    }
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        finishInitialization()
    }
    func finishInitialization() {
        NotificationCenter.default.addObserver(self, selector:#selector(textChanged(notification:)) , name: NSNotification.Name.UITextViewTextDidChange, object: nil)
        
        let labelLeftOffset = kLabelLeftOffset
        var labelTopOffset = self.topLabelOffset
        
        if (UIScreen.main.scale == 2.0) {
            labelTopOffset = labelTopOffset! + kLabelTopOffset
        }
        
        let labelOffset = CGSize(width: labelLeftOffset, height: labelTopOffset!)
        let labelFrame = placeholderLabelFrameWithOffset(labelOffset: labelOffset)
        createPlaceholderLabel(labelFrame: labelFrame)
    }
    
    //MARK: - Placeholder label helpers
    
    func createPlaceholderLabel(labelFrame:CGRect) {
        self.placeholderLabel = UILabel(frame: labelFrame)
        self.placeholderLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        self.placeholderLabel?.numberOfLines = 0
        
        if((self.placeholderFont) != nil) {
            self.placeholderLabel?.font = self.placeholderFont
        } else {
            self.placeholderLabel?.font = self.font
        }
        
        self.placeholderLabel?.backgroundColor = UIColor.clear
        self.placeholderLabel?.text = self.placeholderText
        
        if ((self.placeholderColor) != nil) {
            self.placeholderLabel?.textColor = self.placeholderColor
        } else {
            self.placeholderLabel?.textColor = UIColor(white: 0.71, alpha: 1.0)
        }
        self.addSubview(self.placeholderLabel!)
    }
    
    func placeholderLabelFrameWithOffset(labelOffset: CGSize) -> CGRect {
        return CGRect(x: labelOffset.width, y: labelOffset.height, width: self.bounds.size.width, height: self.bounds.size.height)
    }
    
    //MARK:- Custom accessors
    func setPlaceholderText(string:String) {
        placeholderText = string.copy() as? String
        self.placeholderLabel?.text = string
        placeholderLabel?.sizeToFit()
    }
    
    func setPlaceholderColor(color:UIColor) {
        self.placeholderLabel?.textColor = color
        placeholderLabel?.sizeToFit()
    }
    
    func setPlaceholderFont(font:UIFont) {
        self.placeholderLabel?.font = font
        placeholderLabel?.sizeToFit()
    }
    
    func setTextViewBorderWidth(textViewBorderWidth:CGFloat) {
        self.layer.borderWidth = textViewBorderWidth
        self.sizeToFit()
    }
    
    func setTextViewCornerRadius(textViewCornerRadius:CGFloat) {
        self.layer.cornerRadius = textViewCornerRadius
        self.sizeToFit()
    }
    
    func setTextViewBorderColor(textViewBorderColor:UIColor) {
        self.layer.borderColor = textViewBorderColor.cgColor
        self.sizeToFit()
    }
    
    func setTextViewTintColor(textViewTintColor:UIColor) {
        self.tintColor = textViewTintColor
        self.sizeToFit()
    }
    
    //MARK:- UITextView subclass methods
    
    // Keep the placeholder label font in sync with the view's text font.
    func setFont(font:UIFont) {
        super.font = font
        self.placeholderLabel?.font = self.font
    }
    
    // Keep placeholder label alignment in sync with the view's text alignment.
    func setTextAlignment(textAlignment:NSTextAlignment) {
        super.textAlignment = textAlignment
        self.placeholderLabel?.textAlignment = textAlignment
    }
    
    override var insertDictationResultPlaceholder: Any {
        let placeholder = super.insertDictationResultPlaceholder
        self.placeholderLabel?.isHidden = true
        
        return placeholder
    }
    
    override func removeDictationResultPlaceholder(_ placeholder: Any, willInsertResult: Bool) {
        super.removeDictationResultPlaceholder(placeholder, willInsertResult: willInsertResult)
        self.placeholderLabel?.isHidden = false
        updatePlaceholderLabelVisibility()
    }
    //MARK:- Text change listeners
    
    func updatePlaceholderLabelVisibility() {
        if (self.text.count == 0 ) {
            self.placeholderLabel?.alpha = 1.0
        } else {
            self.placeholderLabel?.alpha = 0.0
        }
    }
    // When text is set or changed, update the label's visibility.
    
    func setText(text:NSString) {
        super.text = text as String!
        updatePlaceholderLabelVisibility()
    }
    
    //MARK:-  UITextInput overrides
    
    @objc func textChanged(notification:Notification) {
        updatePlaceholderLabelVisibility()
    }
}
