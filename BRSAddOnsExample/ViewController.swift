//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customView: BRSView!
    @IBOutlet weak var label: BRSLabel!
    @IBOutlet weak var paddingTextField: BRSTextField!
    @IBOutlet weak var placeholderTextView: BRSPlaceholderTextView!
    var activityIndictor : BRSActivityIndicator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        placeholderTextView.placeholderText = "textview with placeholder"
        placeholderTextView.placeholderFont = UIFont(name: "Arial-BoldMT", size: 12)
        placeholderTextView.placeholderColor = UIColor.blue
        placeholderTextView.textViewBorderColor = UIColor.black
        placeholderTextView.tintColor = UIColor.red
        placeholderTextView.textViewBorderWidth = 5.0
        placeholderTextView.textViewCornerRadius = 5.0
        
        paddingTextField.borderColor = UIColor.black
        paddingTextField.borderWidth = 5
        paddingTextField.cornerRadius = 5
        
        label.borderColor = UIColor.black
        label.borderWidth = 5
        label.cornerRadius = 5
        
        customView.borderColor = UIColor.black
        customView.borderWidth = 5
        customView.cornerRadius = 5
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        setupActivity()
        self.activityIndictor?.activityShow(showStatus: true)
    }
    func setupActivity () {
        
        self.activityIndictor = BRSActivityIndicator ()
        self.activityIndictor?.activityType = Activity_Type.BRSACTIVITYSMALL
        self.activityIndictor?.activityCornerRadius = (self.activityIndictor?.frame.size.width)!/2;
        self.activityIndictor?.activityIndicatorSize = 300;
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

