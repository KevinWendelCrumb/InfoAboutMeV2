//
//  AboutMeViewController.swift
//  InfoAboutMeV2
//
//  Created by Олеся Данилина on 04.09.2020.
//  Copyright © 2020 Lesia Danilina. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func artTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "artSegue", sender: nil)
    }
    
    @IBAction func teslaTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "teslaSegue", sender: nil)
    }
    @IBAction func motoTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "motoSegue", sender: nil)
    }
    
}

