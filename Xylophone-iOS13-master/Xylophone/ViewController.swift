//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation // Import library from Apple

class ViewController: UIViewController {
    
    // Create a new AVAudioPlayer
    var player: AVAudioPlayer!
    var pressedButton: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        pressedButton = sender.currentTitle
        playSound()
    }
    
    func playSound() {
        // Set our URL to be the location of our C.wav sound file in out project
        let url = Bundle.main.url(forResource: pressedButton, withExtension: "wav")
        
        // Put this sound file into our player
        player = try! AVAudioPlayer(contentsOf: url!)
        
        // Play the sound
        player.play()
    }
    
}

