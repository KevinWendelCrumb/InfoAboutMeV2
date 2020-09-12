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
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    //метод при нажатии кнопки logIn
    @IBAction func loginTapped(_ sender: UIButton) {
        guard let userName = userNameTF.text, !userName.isEmpty else {
            showAlert(with: "Hm!", and: "Please enter your name")
            return
        }
        guard let password = passwordTF.text, !password.isEmpty else {
            showAlert(with: "Hm!", and: "Please enter your password")
            return
            
        }
        
        if userName == user.login && password == user.password {
            performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
        } else {
            showAlert(with: "Hm!", and: "Wrong login or password")
            passwordTF.text = ""
        }
    }
    // метод для алерт при нажатии на кнопку Забыл имя
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Ooops!", and: "Your name: User")
    }
    
    // метод для алерт при нажатии на кнопку Забыл пароль
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Ooops!", and: "Your password: Password")
    }
    //возвращение на первый экран
    @IBAction func unwind(_ sender: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(with title: String, and message: String) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
   
}
