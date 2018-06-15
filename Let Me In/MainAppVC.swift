//
//  MainAppVC.swift
//  Let Me In
//
//  Created by Kyle Lee on 6/15/18.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

class MainAppVC: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let unwrappedUsername = self.username else { return }
        greetingLabel.text = "Hello, \(unwrappedUsername)"
    }


}
