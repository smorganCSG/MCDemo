//
//  ViewController.swift
//  MCDemo
//
//  Created by Dan Lange on 10/11/17.
//  Copyright © 2017 Dan Lange. All rights reserved.
//

import UIKit
import MobileCenterAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onCrashApp(_ sender: Any) {
        let x = [0]
        print(x[1])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CHOICE1_SEGUE" {
            MSAnalytics.trackEvent("Selection", withProperties: ["Category" : "Choice 1"])
        }
        
        if segue.identifier == "CHOICE2_SEGUE" {
            MSAnalytics.trackEvent("Selection", withProperties: ["Category" : "Choice 2"])
        }
    }
    
}

