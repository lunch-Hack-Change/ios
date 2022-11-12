//
//  ViewController.swift
//  Hack&Change
//
//  Created by Максим Половинкин on 11.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
   
    @IBOutlet weak var enterButton: UIButton!
   
    @IBOutlet weak var phoneText: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundCorners()
        print(self.view.bounds.height)
    }
    
    @IBAction func registerTapped(_ sender: Any) {
        
    }
    
    @IBAction func enterTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileVc")
        vc?.modalPresentationStyle = .fullScreen
        vc?.modalTransitionStyle = .crossDissolve
        self.present(vc!, animated: true)
    }
    
    func roundCorners() {
        passwordTextField.layer.masksToBounds = true
        phoneText.layer.masksToBounds = true
        passwordTextField.layer.cornerRadius = passwordTextField.bounds.height / 2
        enterButton.layer.cornerRadius = enterButton.bounds.height / 2
        phoneText.layer.cornerRadius = phoneText.bounds.height / 2
    }
}

