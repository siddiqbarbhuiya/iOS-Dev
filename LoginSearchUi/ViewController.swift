//
//  ViewController.swift
//  LoginSearchUi
//
//  Created by Siddiq Barbhuiya on 27/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    var color = UIColor(red: 87/255, green: 159/255, blue: 251/255, alpha: 1).cgColor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loginButton.layer.backgroundColor = color
        loginButton.layer.shadowOpacity = 1
        loginButton.layer.shadowOffset = CGSize.zero
        loginButton.layer.shadowColor = color
        loginButton.layer.shadowRadius = 2.0
        
        
    }


}

