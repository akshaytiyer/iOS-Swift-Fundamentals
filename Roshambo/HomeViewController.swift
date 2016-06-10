//
//  HomeViewController.swift
//  Roshambo
//
//  Created by Akshay Iyer on 6/10/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func paperButton(sender: AnyObject) {
        performSegueWithIdentifier("Paper", sender: self)
    }
    
    @IBAction func rockButton(sender: AnyObject) {
        var controller: ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        controller.resultText = "Rock"
        presentViewController(controller, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Scissors" {
        let controller = segue.destinationViewController as! ResultViewController
            controller.resultText = "Scissors"
        }
        if segue.identifier == "Paper" {
            let controller = segue.destinationViewController as! ResultViewController
            controller.resultText = "Paper"
        }
        
    }

}
