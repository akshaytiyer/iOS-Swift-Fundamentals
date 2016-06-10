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
    
    func getRandonValue() -> String
    {
        let randomValue = 1 + arc4random()%3
        if Int(randomValue)==1 {
            return "Rock"
        }
        else if Int(randomValue)==2 {
            return "Paper"
        }
        else {
            return "Scissors"
        }
    }
    
    func resultTest(clickedValue: String, randomValue: String) -> String
    {
        let result = true
        
        switch result {
        case clickedValue=="Rock" && randomValue=="Paper":
            return "Paper Covers Rock"
        case clickedValue=="Paper" && randomValue=="Rock":
            return "Paper Covers Rock"
        case clickedValue=="Rock" && randomValue=="Scissors":
            return "Rock Crushes Scissors"
        case clickedValue=="Scissors" && randomValue=="Rock":
            return "Rock Crushes Scissors"
        case clickedValue=="Paper" && randomValue=="Scissors":
            return "Scissors Eats Paper"
        case clickedValue=="Scissors" && randomValue=="Paper":
            return "Scissors Eats Paper"
        default:
            return "It's a Tie"
        }
    }
    
    func imageName(resultTest: String) -> String
    {
        let result = true
        switch result {
        case resultTest=="Paper Covers Rock":
            return "Paper-Rock"
        case resultTest=="Rock Crushes Scissors":
            return "Rock-Scissors"
        case resultTest=="Scissors Eats Paper":
            return "Scissors-Paper"
        default:
            return "Tie"
        }
    }
    
    @IBAction func rockButton(sender: AnyObject) {
        var controller: ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        let resultTest = self.resultTest("Rock", randomValue: self.getRandonValue())
        controller.resultText = resultTest
        controller.imageName = self.imageName(resultTest)
        presentViewController(controller, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Scissors" {
        let controller = segue.destinationViewController as! ResultViewController
            let resultTest = self.resultTest("Scissors", randomValue: self.getRandonValue())
            controller.resultText = resultTest
            controller.imageName = self.imageName(resultTest)
        }
        if segue.identifier == "Paper" {
            let controller = segue.destinationViewController as! ResultViewController
            let resultTest = self.resultTest("Paper", randomValue: self.getRandonValue())
            controller.resultText = resultTest
            controller.imageName = self.imageName(resultTest)
        }
        
    }

}
