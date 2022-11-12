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
   

}
