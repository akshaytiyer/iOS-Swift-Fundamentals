//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Akshay Iyer on 6/1/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var recordButton: UIButton!
    @IBOutlet var stopRecordButton: UIButton!
    
    @IBOutlet var recordingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordButton.enabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordSound(sender: AnyObject) {
        print("Recoed Button Pressed")
        recordingLabel.text = "Recording Started"
        stopRecordButton.enabled = true
        recordButton.enabled = false
    }
    @IBAction func stopRecording(sender: AnyObject) {
        print("Stop Recoed Button Pressed")
        recordingLabel.text = "Recording Started"
        stopRecordButton.enabled = false
        recordButton.enabled = true
    }

}

