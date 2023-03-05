//
//  ViewController.swift
//  idm362-bl629
//
//  Created by Bryant Lu on 1/25/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var squirtLabel: UILabel!
    
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enterBTN(_ sender: Any) {
        squirtLabel.text = "\(nameText.text!)"
    }
    
    
    @IBAction func resetBTN(_ sender: Any) {
        squirtLabel.text = "Squirtle"
    }
    
}

