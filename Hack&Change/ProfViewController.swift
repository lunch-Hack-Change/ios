//
//  ProfViewController.swift
//  Hack&Change
//
//  Created by Максим Половинкин on 12.11.2022.
//

import UIKit

class ProfViewController: UIViewController {

    @IBOutlet weak var profitLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        profitLabel.layer.masksToBounds = true
        profitLabel.layer.cornerRadius = profitLabel.bounds.height / 2
    
    }
}
