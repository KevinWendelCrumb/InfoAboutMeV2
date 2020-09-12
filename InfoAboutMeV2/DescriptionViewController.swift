//
//  DescriptionViewController.swift
//  InfoAboutMeV2
//
//  Created by Олеся Данилина on 06.09.2020.
//  Copyright © 2020 Lesia Danilina. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet var descriptionOneLabel: UILabel!
    @IBOutlet var descriptionTwoLabel: UILabel!
    
    var hobby: Hobby!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionOneLabel.text = hobby.descriptionOne
        descriptionTwoLabel.text = hobby.descriptionTwo
    }
}
