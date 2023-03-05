//
//  ViewControllerMain.swift
//  idm362-bl629
//
//  Created by Bryant Lu on 3/1/23.
//

import UIKit
import AVFoundation

var myAudioPLayerObj = AVAudioPlayer()

class ViewControllerMain: UIViewController {


    @IBOutlet weak var bulbLabel: UILabel!
    
    
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let bulbSound = Bundle.main.path(forResource: "pokesounds/bulbasaur", ofType: "mp3")
        
        do {
            myAudioPLayerObj = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: bulbSound!))
            myAudioPLayerObj.prepareToPlay()
            print("Sound file is loaded and ready!")
        } catch {
            print(error)
        }
        
    }
    

    @IBAction func enterBTN(_ sender: Any) {
        bulbLabel.text = "\(nameText.text!)"
    }
    
    
    @IBAction func resetBTN(_ sender: Any) {
        bulbLabel.text = "Bulbasaur"
    }
    
    
    
    @IBAction func bulbspeakBTN(_ sender: Any) {
        print("bulbspeakBTN called")
        if(myAudioPLayerObj.isPlaying) {
            myAudioPLayerObj.stop()
        } else {
            myAudioPLayerObj.play()
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
