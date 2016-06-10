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
    @IBOutlet var resultLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        if let resultText = self.resultText
        {
            resultLabel.text = resultText
        }
        else
        {
            resultLabel.text = "Data Not Found"
        }
    }
}
