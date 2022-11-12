//
//  ProfileViewController.swift
//  Hack&Change
//
//  Created by Максим Половинкин on 12.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var cardImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //profileImage.layer.cornerRadius = profileImage.bounds.height / 2
    }
}
