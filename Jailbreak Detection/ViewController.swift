//
//  ViewController.swift
//  Jailbreak Detection
//
//  Created by Hariharan Murugesan on 25/09/16.
//  Copyright © 2016 Hariharan Murugesan. All rights reserved.
// Follwe me on Twitter @developerHari
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    let cydiaURL = "/Applications/Cydia.app"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if FileManager.default.fileExists(atPath: cydiaURL){
            
            
            //Code here executes if the device is found to be Jailbroken.
            
            
            statusLabel.text = "Jailbroken"
            
        }
        
        else {
            
            statusLabel.text = "Jailed"
            //Code here executes if the device is NOT Jailbroken.
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

