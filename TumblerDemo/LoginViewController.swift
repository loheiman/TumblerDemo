//
//  LoginViewController.swift
//  TumblerDemo
//
//  Created by Loren Heiman on 10/11/14.
//  Copyright (c) 2014 Loren Heiman. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailField: UILabel!
    @IBOutlet weak var loginFormView: UIView!
    @IBOutlet weak var loginForm: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        println("view did load")
        self.loginFormView.frame.origin.y = 400

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animate: Bool) {
        println("viewdid appear")
        
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 2, options: nil, animations: { () -> Void in
            self.loginFormView.frame.origin.y = 200
            }) { (Finished: Bool) -> Void in
           //  emailField.becomeFirstResponder()
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(sender: AnyObject) {
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            self.loginFormView.frame.origin.y = 600
            }) { (Finished:Bool) -> Void in
            self.dismissViewControllerAnimated(true , completion: nil)
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
