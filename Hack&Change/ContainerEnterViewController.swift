//
//  ContainerEnterViewController.swift
//  Hack&Change
//
//  Created by Максим Половинкин on 12.11.2022.
//

import UIKit



class ContainerEnterViewController: UIViewController {
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var phoneNumberLabel: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var enterButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        roundCorners()
        setGradientBackground()
        
    }
    
    @IBAction func enterButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileVc")
        vc?.modalPresentationStyle = .fullScreen
        vc?.modalTransitionStyle = .crossDissolve
        self.present(vc!, animated: true)
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
    }
    
    func roundCorners() {
        
        self.view.layer.masksToBounds = true
        self.view.layer.cornerRadius = 40
        
        passwordLabel.layer.masksToBounds = true
        phoneNumberLabel.layer.masksToBounds = true
        passwordLabel.layer.cornerRadius = passwordLabel.bounds.height / 2
        enterButton.layer.cornerRadius = enterButton.bounds.height / 2
        phoneNumberLabel.layer.cornerRadius = phoneNumberLabel.bounds.height / 2
        
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
        let vc = storyboard?.instantiateViewController(withIdentifier: "RegisterVC")
        vc?.modalPresentationStyle = .formSheet
        vc?.modalTransitionStyle = .crossDissolve
        self.present(vc!, animated: true)
    }
}
