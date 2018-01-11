//
//  ViewController.swift
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

class ViewController: UIViewController {
    
    var activityIndictor : BRSActivityIndicator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // textfield with padding
        let paddingTextField = BRSTextField(frame: CGRect(x: 20, y: 75, width: UIScreen.main.bounds.size.width-40, height: 45))
        paddingTextField.placeholder = "padding textfield"
        paddingTextField.borderColor = UIColor.black
        paddingTextField.borderWidth = 5
        paddingTextField.cornerRadius = 5
        self.view.addSubview(paddingTextField)
        
        let customLabel = BRSLabel(frame: CGRect(x: 20, y: paddingTextField.frame.origin.y+paddingTextField.frame.size.height+20, width: UIScreen.main.bounds.size.width-40, height: 45))
        customLabel.text = "custom label"
        customLabel.textColor = UIColor.black
        customLabel.borderColor = UIColor.black
        customLabel.borderWidth = 5
        customLabel.cornerRadius = 5
        customLabel.backgroundColor = UIColor.white
        self.view.addSubview(customLabel)
        
        let customView  = BRSView(frame: CGRect(x: 20, y: customLabel.frame.origin.y+customLabel.frame.size.height+20, width: UIScreen.main.bounds.size.width-40, height: 45))
        customView.backgroundColor = UIColor.brown
        customView.borderColor = UIColor.black
        customView.borderWidth = 5
        customView.cornerRadius = 5
        self.view.addSubview(customView)
        
        let btn = UIButton(frame: CGRect(x: 20, y: customView.frame.origin.y+customView.frame.size.height+20, width: UIScreen.main.bounds.size.width-40, height: 45))
        btn.setTitle("Click Here !!!", for: UIControlState.normal)
        btn.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn.addTarget(self, action: #selector(btnPressed(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        setupActivity()
        /***
         custom activity indicator start animating
         ***/
        self.activityIndictor?.activityShow(showStatus: true)
    }
    func setupActivity () {
        
        // custom activity indicator
        self.activityIndictor = BRSActivityIndicator ()
        self.activityIndictor?.activityType = Activity_Type.BRSACTIVITYSMALL
        self.activityIndictor?.activityCornerRadius = (self.activityIndictor?.frame.size.width)!/2;
        self.activityIndictor?.activityIndicatorSize = 300;
        self.activityIndictor?.activityStyle = UIActivityIndicatorViewStyle.whiteLarge
        self.activityIndictor?.activityColor = UIColor.red;
        self.activityIndictor?.center =                                                                       CGPoint(x:UIScreen.main.bounds.size.width/2, y:UIScreen.main.bounds.size.height/2);
        
        self.view.addSubview(self.activityIndictor!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

