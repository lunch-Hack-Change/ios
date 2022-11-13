//
//  ProfViewController.swift
//  Hack&Change
//
//  Created by Максим Половинкин on 12.11.2022.
//

import UIKit

class ProfViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profitLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        profitLabel.layer.masksToBounds = true
        profitLabel.layer.cornerRadius = profitLabel.bounds.height / 2
        setGradientBackground()
    }
    
    func setGradientBackground() {
        let gradient = CAGradientLayer()
        let blue = UIColor(red: 0.38, green: 0.71, blue: 0.91, alpha: 1.00)
        let green = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        gradient.colors = [blue.cgColor, green.cgColor, green.cgColor]
        gradient.locations = [0, 0.6, 1.5]
        gradient.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        view.layer.addSublayer(gradient)
        
        gradient.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        self.view.layer.insertSublayer(gradient, at:0)
    }
}
