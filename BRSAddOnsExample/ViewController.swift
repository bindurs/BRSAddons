//
//  ViewController.swift
//

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

