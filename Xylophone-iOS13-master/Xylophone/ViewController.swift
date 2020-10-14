//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    func playSound() {
        
        //Grabbing hold of C.wav file in our app resources right here
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav")
            else { return }
        
        
        do {
            //Making sure that our sound gets played even if the phone is on silent
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            //Tell our audio player that this is the file that we want to play C.wav
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            guard let player = player else {
                return
            }
            
            // Actually play it
            player.play()
        
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

