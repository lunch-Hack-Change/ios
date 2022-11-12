//
//  RegisterControllerViewController.swift
//  Hack&Change
//
//  Created by Максим Половинкин on 13.11.2022.
//

import UIKit

class RegisterControllerViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var nick: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var secondName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundCorners()
        setGradientBackground()
    }
    
    func roundCorners() {

        self.view.layer.masksToBounds = true
        self.view.layer.cornerRadius = 40
       
        password.layer.masksToBounds = true
        nick.layer.masksToBounds = true
        secondName.layer.masksToBounds = true
        name.layer.masksToBounds = true
        password.layer.cornerRadius = password.bounds.height / 2
        nick.layer.cornerRadius = nick.bounds.height / 2
        secondName.layer.cornerRadius = secondName.bounds.height / 2
        name.layer.cornerRadius = name.bounds.height / 2
        registerButton.layer.cornerRadius = registerButton.bounds.height / 2
        
    }
   
    func setGradientBackground() {
        let gradient = CAGradientLayer()
        let blue = UIColor(red: 0.38, green: 0.71, blue: 0.91, alpha: 1.00)
        let green = UIColor(red: 0.36, green: 0.36, blue: 0.73, alpha: 1.00)
        gradient.colors = [blue.cgColor, green.cgColor, green.cgColor]
        gradient.locations = [0.4, 0.6, 1.0]
        gradient.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        view.layer.addSublayer(gradient)
        self.view.layer.insertSublayer(gradient, at:0)
    }

    @IBAction func registerTapped(_ sender: Any) {
        if !name.text!.isEmpty && !nick.text!.isEmpty && !password.text!.isEmpty && !secondName.text!.isEmpty {
            let vc = storyboard?.instantiateViewController(withIdentifier: "EnterVc")
            vc?.modalPresentationStyle = .fullScreen
        vc?.modalTransitionStyle = .coverVertical
            self.present(vc!, animated: true)
        } else {
            let alert = UIAlertController(title: "Ошибка", message: "Проверьте правильность вводимых данных.", preferredStyle: UIAlertController.Style.alert)
                          alert.addAction(UIAlertAction(title: "Ок", style: UIAlertAction.Style.default, handler: nil))
                          self.present(alert, animated: true, completion: nil)
        }
    }
}
