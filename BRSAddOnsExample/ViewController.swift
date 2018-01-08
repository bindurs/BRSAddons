//
//  ViewController.swift
//  BRSAddOnsExample
//
//  Created by Bindu on 08/01/18.
//  Copyright © 2018 Bindu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activityIndictor : BRSActivityIndicator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupActivity()
        
        self.activityIndictor?.activityShow(showStatus: true)
    }
    
    func setupActivity () {
    
    self.activityIndictor = BRSActivityIndicator ()
        self.activityIndictor?.activityType = Activity_Type.BRSACTIVITYSMALL
        self.activityIndictor?.activityCornerRadius = (self.activityIndictor?.frame.size.width)!/2;
        self.activityIndictor?.activityIndicatorSize = 30;
        self.activityIndictor?.activityStyle = UIActivityIndicatorViewStyle.whiteLarge
        self.activityIndictor?.activityColor = UIColor.red;
        self.activityIndictor?.center = CGPoint(x:UIScreen.main.bounds.size.width/2, y:UIScreen.main.bounds.size.height/2);
        self.view.addSubview(self.activityIndictor!)
    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

