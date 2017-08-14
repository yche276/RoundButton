//
//  ViewController.swift
//  RoundButton
//
//  Created by Victor Chen on 10/1/15.
//  Copyright © 2015 Mt Zendo Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor()
        let rb = MZRoundButton(type: UIButtonType.Custom)
        rb.frame = CGRectMake(100, 400, 100, 100)
        rb.backgroundColor = UIColor.darkGrayColor()
        rb.setImage(UIImage(named: "PhotoIconBlack"), forState: UIControlState.Normal)
        rb.addTarget(self, action: "onRoundButton:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(rb)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func onRoundButton(sender: AnyObject) {
        NSLog("onRoundButton")
    }
}

