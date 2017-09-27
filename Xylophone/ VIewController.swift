//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController{
    
    var audioPlayer = AVAudioPlayer()
    var audioPath = Bundle.main.path(forResource: "note", ofType: "wav")
    var soundName = ["note1", "note2", "note3", "note4","note5", "note6", "note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName: sender.tag - 1)
    }
    
  
    func playSound(soundFileName: Int) {
        
        audioPath = Bundle.main.path(forResource: soundName[soundFileName], ofType: "wav")
        do {
            try audioPlayer =  AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            audioPlayer.play()
        } catch {
            print("error")
        }
        
    }

}

