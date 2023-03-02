//
//  ViewControllerFire.swift
//  idm362-bl629
//
//  Created by Bryant Lu on 3/2/23.
//

import UIKit

class ViewControllerFire: UIViewController {

    
    @IBOutlet weak var charLabel: UILabel!
    
    @IBOutlet weak var nameText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func enterBTN(_ sender: Any) {
        charLabel.text = "\(nameText.text!)"
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
