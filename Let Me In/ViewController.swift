//
//  ViewController.swift
//  Let Me In
//
//  Created by Kyle Lee on 6/15/18.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func didTapLogin() {
        
        let deadline = DispatchTime.now() + .seconds(3)
        
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            print("LOGIN")
            self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: self.usernameTextField.text)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let mainAppVC = segue.destination as? MainAppVC, let username = sender as? String {
            mainAppVC.username = username
        }
        
    }
    
    
    
    
    
}

