//
//  BRSActivityIndicator.swift
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

enum Activity_Type : Int {
    case BRSACTIVITYLARGE = 0
    case BRSACTIVITYSMALL
}
class BRSActivityIndicator: UIView {
    
    var activityType : Activity_Type?
    var activityColor : UIColor?
    var activityStyle = UIActivityIndicatorViewStyle.whiteLarge
    var activityIndicatorSize : NSNumber?
    var activityCornerRadius : CGFloat = CGFloat()
    var activity = UIActivityIndicatorView()
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    override init(frame: CGRect) {
        activityType = Activity_Type.BRSACTIVITYLARGE
        activityIndicatorSize  = 100
        
        super.init(frame: frame)
        
    }
    
    init() {
        activityType = Activity_Type.BRSACTIVITYLARGE
        if activityType == Activity_Type.BRSACTIVITYSMALL {
            super.init(frame: CGRect(x: 0, y: 0, width: CGFloat(truncating: activityIndicatorSize!), height: CGFloat(truncating: activityIndicatorSize!)))
        }
        else {
            super.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
            activityIndicatorSize = 100
        }
        self.layer.cornerRadius = self.activityCornerRadius
        
        setupActivity()
        
    }
    
    func setupActivity() {
        self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        self.layer.masksToBounds = true
        
        activity = UIActivityIndicatorView(activityIndicatorStyle: activityStyle)
        activity.center = self.center
        activity.color = self.activityColor
        self.addSubview(activity)
        self.bringSubview(toFront: activity)
        
        self.isHidden = true
    }
    
    func setActivityType(type : Activity_Type) {
        activityType = type
        
        if type == Activity_Type.BRSACTIVITYSMALL {
            
            self.frame = CGRect(x: 0, y: 0, width: CGFloat(truncating: activityIndicatorSize!), height: CGFloat(truncating: activityIndicatorSize!))
        } else {
            self.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }
        activity.center = self.center
    }
    
    func setActivityIndicatorSize(size : NSNumber) {
        activityIndicatorSize = size
        
        if (activityType == Activity_Type.BRSACTIVITYSMALL) {
            self.frame = CGRect(x: 0, y: 0, width: CGFloat(truncating: size), height: CGFloat(truncating: size))
            activity.center = self.center
        }
    }
    func setActivityCornerRadius(cornerRadius : NSInteger) {
        if(activityType == Activity_Type.BRSACTIVITYSMALL) {
            self.layer.cornerRadius = CGFloat(cornerRadius)
        }
    }
    func setActivityColor(activityColor: UIColor) {
        activity.color = activityColor
    }
    
    func setActivityStyle(activityStyle:UIActivityIndicatorViewStyle) {
        activity.activityIndicatorViewStyle = activityStyle
    }
    
    func activityShow(showStatus:Bool) {
        if showStatus {
            self.superview?.bringSubview(toFront: self)
            self.isHidden = false
            activity.startAnimating()
        } else {
            self.isHidden = true
            activity.stopAnimating()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
