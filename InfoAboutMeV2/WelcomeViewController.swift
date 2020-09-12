//
//  WelcomeViewController.swift
//  InfoAboutMeV2
//
//  Created by Олеся Данилина on 04.09.2020.
//  Copyright © 2020 Lesia Danilina. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user.login)"
    }

}
