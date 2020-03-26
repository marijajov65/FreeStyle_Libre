//
//  ViewController.swift
//  FreeStyleLibreApp
//
//  Created by Marija Jovicic on 3/24/20.
//  Copyright © 2020 Marija Jovicic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var glucoseLevelNumber: UILabel!
    var receivedPhrase = Int ()
    var glucoseLevelInt = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //var glucoseLevel = 0
        glucoseLevelInt = glucoseLevelInt + receivedPhrase
        glucoseLevelNumber.text = String(glucoseLevelInt)
        
    
        //change the glucose level here
        
        //glucoseLevelNumber.text = String(glucoseLevel)
        // Do any additional setup after loading the view.
    }
    
}

