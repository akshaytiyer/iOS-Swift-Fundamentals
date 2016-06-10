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
    var label1: UILabel!
    var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label 1
        let label1 = UILabel()
        label1.frame = CGRectMake(150, 150, 60, 60)
        label1.text = "0"
        self.view.addSubview(label1)
        
        let label2 = UILabel()
        label2.frame = CGRectMake(150, 200, 60, 60)
        label2.text = "0"
        self.view.addSubview(label2)

        //Assign the Label 1 text when button is clicked
        self.label1 = label1
        
        //Assign the Label 2 text when button is clicked
        self.label2 = label2
        
        //Button Up
        let buttonup = UIButton()
        buttonup.frame = CGRectMake(150, 250, 60, 60)
        buttonup.setTitle("Up", forState: .Normal)
        buttonup.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(buttonup)
        
        buttonup.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
        //Button Down
        let buttondown = UIButton()
        buttondown.frame = CGRectMake(150, 300, 60, 60)
        buttondown.setTitle("Down", forState: .Normal)
        buttondown.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(buttondown)
        
        buttondown.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount()
    {
        self.view.backgroundColor = UIColor.greenColor()
        self.count += 1
        self.label1.text = "\(count)"
        self.label2.text = "\(count)"
    }
    
    func decrementCount()
    {
        self.view.backgroundColor = UIColor.redColor()
        self.count -= 1
        self.label1.text = "\(count)"
        self.label2.text = "\(count)"
    }

}

