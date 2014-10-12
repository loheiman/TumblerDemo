//
//  ComposeViewController.swift
//  TumblerDemo
//
//  Created by Loren Heiman on 10/8/14.
//  Copyright (c) 2014 Loren Heiman. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    
    
    @IBOutlet weak var nevermindImageView: UIImageView!
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    
    @IBOutlet weak var actionsView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionsView.center.x = view.center.x
        actionsView.center.y = 650
        
       
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        UIView.animateWithDuration(0.2, delay: 0, options: nil, animations: { () -> Void in
            self.actionsView.center.y = 250
            }) { (Finished:Bool) -> Void in
                UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
                    
                    self.textButton.frame.origin = CGPoint(x: 23, y: 35)
                    self.photoButton.frame.origin = CGPoint(x: 123, y: 35)
                    self.quoteButton.frame.origin = CGPoint(x: 223, y: 35)
                    self.linkButton.frame.origin = CGPoint(x: 23, y: 150)
                    self.chatButton.frame.origin = CGPoint(x: 123, y: 150)
                    self.videoButton.frame.origin = CGPoint(x: 223, y: 150)
                    
                    }) { (Finished: Bool) -> Void in
                        //
                }

        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onNevermindButton(sender: AnyObject) {
        UIView.animateWithDuration(0.2, delay: 0, options: nil, animations: { () -> Void in
            self.textButton.center.x = -100
            self.videoButton.center.x = 420
            self.nevermindImageView.alpha = 0
            }) { (Finished: Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.2, delay: 0.1, options: nil, animations: { () -> Void in
            self.photoButton.center.x = -100
            self.chatButton.center.x = 420
            }) { (Finished: Bool) -> Void in
               self.dismissViewControllerAnimated(true, completion: nil)
                
        }
        
        UIView.animateWithDuration(0.2, delay: 0.2, options: nil, animations: { () -> Void in
            self.quoteButton.center.x = -100
            self.linkButton.center.x = 420
            }) { (Finished: Bool) -> Void in
                //self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
