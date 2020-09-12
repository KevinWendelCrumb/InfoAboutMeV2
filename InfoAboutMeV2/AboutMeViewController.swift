//
//  AboutMeViewController.swift
//  InfoAboutMeV2
//
//  Created by Олеся Данилина on 04.09.2020.
//  Copyright © 2020 Lesia Danilina. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var personName: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personName.text = user.person.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let descriptionVC = segue.destination as! DescriptionViewController
        
        switch segue.identifier {
        case "artSegue":
            for hobby in user.person.hobbies {
                if hobby.title == "Живопись" {
                    descriptionVC.hobby = hobby
                }
            }
        case "teslaSegue":
            for hobby in user.person.hobbies {
                if hobby.title == "Тесла" {
                    descriptionVC.hobby = hobby
                    
                }
            }
        case "motoSegue":
            for hobby in user.person.hobbies {
                if hobby.title == "Мотоцикл" {
                    descriptionVC.hobby = hobby
                }
            }
        default: break
            
        }
    }
}

