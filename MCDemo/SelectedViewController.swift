//
//  SelectedViewController.swift
//  MCDemo
//
//  Created by Dan Lange on 10/12/17.
//  Copyright © 2017 Dan Lange. All rights reserved.
//

import UIKit
import MobileCenterAnalytics

class SelectedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDoneTouch(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
}
