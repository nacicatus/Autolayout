//
//  ViewController.swift
//  AutolayoutPlayers
//
//  Created by Saurabh Sikka on 03/09/16.
//  Copyright (c) 2016 Saurabh Sikka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    var secure: Bool = false { didSet { updateUI() } }
    
    private func updateUI() {
        passwordTextField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" : "Password"
    }
    
    @IBAction func loginButton() {
        
    }
    
    @IBAction func securityToggle() {
        secure = !secure
    }
    
    
    
}

