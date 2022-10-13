//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Siddiq Barbhuiya on 07/09/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLbale: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var result = "0.0"
    var tip = 10
    var split = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        totalLbale.text = result
        settingsLabel.text = "Split between \(split) people, with \(tip)%."
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)

    }
}
