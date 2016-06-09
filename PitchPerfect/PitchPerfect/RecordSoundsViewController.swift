//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Akshay Iyer on 6/1/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController, AVAudioRecorderDelegate {

    @IBOutlet var recordButton: UIButton!
    @IBOutlet var stopRecordButton: UIButton!
    @IBOutlet var recordingLabel: UILabel!
    
    
    var audioRecorder: AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordButton.enabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func recordSound(sender: AnyObject) {
        print("Recoed Button Pressed")
        recordingStateData("Recording Started", stopRecord: true, record: false)
        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = NSURL.fileURLWithPathComponents(pathArray)
        print(filePath)
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord)
        try! audioRecorder = AVAudioRecorder(URL: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.meteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
        
    }
    
    @IBAction func stopRecording(sender: AnyObject) {
        print("Stop Recoed Button Pressed")
        recordingStateData("Recording Stopped", stopRecord: false, record: true)
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    func recordingStateData(recording: String, stopRecord: Bool, record: Bool)
    {
        recordingLabel.text = recording
        stopRecordButton.enabled = stopRecord
        recordButton.enabled = record
    }
    
    func audioRecorderDidFinishRecording(recorder: AVAudioRecorder, successfully flag: Bool) {
        print("AVAudioRecorderFinishedRecording")
        if(flag)
        {
            performSegueWithIdentifier("StopRecording", sender: audioRecorder.url)
        }
        else {
            print("Recording sound failed")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "StopRecording") {
            let playSoundsVC = segue.destinationViewController as! PlaySoundsViewController
            let recordedAudioURL = sender as! NSURL
            playSoundsVC.recordedAudioURL = recordedAudioURL
        }
    }

}

