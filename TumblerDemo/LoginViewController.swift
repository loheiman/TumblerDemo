//
//  LoginViewController.swift
//  TumblerDemo
//
//  Created by Loren Heiman on 10/11/14.
//  Copyright (c) 2014 Loren Heiman. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
   
    @IBOutlet weak var loginFormView: UIView!
    @IBOutlet weak var loginForm: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        println("view did load")
        self.loginFormView.frame.origin.y = 400

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animate: Bool) {
        
        
        
        UIView.animateWithDuration(0.35, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 2, options: nil, animations: { () -> Void in
            self.loginFormView.frame.origin.y = 175
            }) { (Finished: Bool) -> Void in
                println("test")
            self.emailField.becomeFirstResponder()
        }
    }
    
    
    @IBAction func cancelButton(sender: AnyObject) {
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            self.loginFormView.frame.origin.y = 600
            }) { (Finished:Bool) -> Void in
            self.dismissViewControllerAnimated(true , completion: nil)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
