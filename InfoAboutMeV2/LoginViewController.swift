//
//  ViewController.swift
//  InfoAboutMeV2
//
//  Created by Олеся Данилина on 04.09.2020.
//  Copyright © 2020 Lesia Danilina. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBar = segue.destination as! UITabBarController
        let welcomeVC = tabBar.viewControllers?.first as! WelcomeViewController
        let navigationVC = tabBar.viewControllers?.last as! UINavigationController
        let aboutMeVC = navigationVC.topViewController as! AboutMeViewController
        
        welcomeVC.user = user
        aboutMeVC.user = user
    }
    
    // метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    //метод при нажатии кнопки logIn
    @IBAction func loginTapped(_ sender: UIButton) {
        if userNameTF.text! == user.login && passwordTF.text! == user.password {
            performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
        } else {
            let wrong = UIAlertController(title: "Hm!", message: "Wrong login or password", preferredStyle: .alert)
            wrong.addAction(UIAlertAction(title: "OK", style: .default))
            present(wrong, animated: true)
            userNameTF.text = ""
            passwordTF.text = ""
        }
    }
    // метод для алерт при нажатии на кнопку Забыл имя
    @IBAction func forgotUserNameButtonPressed() {
        let alertController = UIAlertController(title: "Ooops!",
                                                message: "Your login: \(user.login)",
            preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
    
    // метод для алерт при нажатии на кнопку Забыл пароль
    @IBAction func forgotPasswordButtonPressed() {
        let alertController = UIAlertController(title: "Ooops!",
                                                message: "Your password: \(user.password)",
            preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
    //возвращение на первый экран
    @IBAction func unwindToOne(_ sender: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""

    }
   
}
