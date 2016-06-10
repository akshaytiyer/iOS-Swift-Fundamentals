//
//  ViewController.swift
//  ClickCounter
//
//  Created by Akshay Iyer on 6/10/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    var count = 0

    @IBOutlet var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func incrementCount(sender: AnyObject) {
        self.count += 1
        self.label1.text = "\(count)"
    }

}

