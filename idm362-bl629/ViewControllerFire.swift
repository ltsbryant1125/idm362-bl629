//
//  ViewControllerFire.swift
//  idm362-bl629
//
//  Created by Bryant Lu on 3/2/23.
//

import UIKit
import AVFoundation

var charAudioPlayerObj = AVAudioPlayer()

class ViewControllerFire: UIViewController {

    
    @IBOutlet weak var charLabel: UILabel!
    
    
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let charSound = Bundle.main.path(forResource: "pokesounds/charmander", ofType: "mp3")
        
        do {
            charAudioPlayerObj = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: charSound!))
            charAudioPlayerObj.prepareToPlay()
            print("Sound file is loaded and ready!")
        } catch {
            print(error)
        }
    }
    
    
    @IBAction func enterBTN(_ sender: Any) {
        if (nameText.text?.isEmpty)! {
            charLabel.text = "Charmander"
        }
        
        else {
            charLabel.text = "\(nameText.text!)"
        }
    }
    
    
    @IBAction func resetBTN(_ sender: Any) {
        charLabel.text = "Charmander"
    }
    
    
    @IBAction func charspeakBTN(_ sender: Any) {
        if (charAudioPlayerObj.isPlaying) {
            charAudioPlayerObj.stop()
        } else {
            charAudioPlayerObj.play()
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
