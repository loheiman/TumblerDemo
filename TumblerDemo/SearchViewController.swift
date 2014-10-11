//
//  SearchViewController.swift
//  TumblerDemo
//
//  Created by Loren Heiman on 10/8/14.
//  Copyright (c) 2014 Loren Heiman. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchFeedImageView: UIImageView!
    @IBOutlet weak var loadingAnimationImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchFeedImageView.hidden = true
        
        var images = UIImage.animatedImageNamed("loading-", duration: 1)
        loadingAnimationImageView.image = images
        
        delay(1.25) {
            self.searchFeedImageView.hidden = false
            self.loadingAnimationImageView.hidden = true
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

}
