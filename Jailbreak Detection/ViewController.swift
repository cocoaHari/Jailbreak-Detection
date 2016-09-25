//
//  ViewController.swift
//  Jailbreak Detection
//
//  Created by Hariharan Murugesan on 25/09/16.
//  Copyright © 2016 Hariharan Murugesan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    let cydiaURL = "/Applications/Cydia.app"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if FileManager.default.fileExists(atPath: cydiaURL){
            
            
            statusLabel.text = "Jailbroken"
            
        }
        
        else {
            
            statusLabel.text = "Jailed"
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

