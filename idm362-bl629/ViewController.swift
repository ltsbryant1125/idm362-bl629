//
//  ViewController.swift
//  idm362-bl629
//
//  Created by Bryant Lu on 1/25/23.
//

import UIKit
import AVFoundation

var squirtAudioPlayerObj = AVAudioPlayer()

class ViewController: UIViewController {

    
    @IBOutlet weak var squirtLabel: UILabel!
    
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let squirtSound = Bundle.main.path(forResource: "pokesounds/squirtle", ofType: "mp3")
        
        do {
            squirtAudioPlayerObj = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: squirtSound!))
            squirtAudioPlayerObj.prepareToPlay()
            print("Sound file is loaded and ready")
        } catch{
            print(error)
        }
        
    }

    @IBAction func enterBTN(_ sender: Any) {
        if (nameText.text?.isEmpty)! {
            squirtLabel.text = "Squirtle"
        }
        
        else {
            squirtLabel.text = "\(nameText.text!)"
        }
    }
    
    
    @IBAction func resetBTN(_ sender: Any) {
        squirtLabel.text = "Squirtle"
    }
    
    
    @IBAction func squirtspeakBTN(_ sender: Any) {
        print("squirtspeakBTN called")
        if (squirtAudioPlayerObj.isPlaying) {
            squirtAudioPlayerObj.stop()
        } else {
            squirtAudioPlayerObj.play()
        }
    }
    
}
