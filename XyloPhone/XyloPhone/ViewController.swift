//
//  ViewController.swift
//  XyloPhone
//
//  Created by Mayuresh Rao on 10/25/18.
//  Copyright © 2018 Mayuresh Rao. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    var selectSoundFileName : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func notePressed(_ sender: UIButton){
        selectSoundFileName = soundArray[sender.tag - 1]
        playSound()
    }
    
    func playSound(){
        let soundurl = Bundle.main.url(forResource: selectSoundFileName, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundurl!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
}

