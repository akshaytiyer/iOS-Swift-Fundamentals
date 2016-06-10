//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Akshay Iyer on 6/10/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController
{
    
    var resultText: String!
    var imageName: String!
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
            resultLabel.text = resultText
            imageView.image = UIImage(named: imageName)
    }
    @IBAction func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
