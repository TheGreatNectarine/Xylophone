//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(number: Int) {
        let soundUrl = Bundle.main.url(forResource: "note\(number)", withExtension: "wav")
        player = try? AVAudioPlayer(contentsOf: soundUrl!)
        player.play()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(number: sender.tag)
    }
}

