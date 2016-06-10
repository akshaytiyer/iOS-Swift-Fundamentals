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
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        
        //Assign the label text when button is clicked
        self.label = label
        
        //Button
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount()
    {
        self.count += 1
        self.label.text = "\(count)"
    }

}

