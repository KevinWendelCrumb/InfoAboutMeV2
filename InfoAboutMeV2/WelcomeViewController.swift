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
    
    @IBOutlet weak var logOutButton: UIButton!
    
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let message: String
        
        if let name = user?.login {
            message = "Welcome, \(name)!"
        }else {
            message = "Welcome!"
        }

        welcomeLabel.text = message
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        _ = segue.destination as! LoginViewController
//    }

}
