//
//  ChatViewController.swift
//  Hack&Change
//
//  Created by Максим Половинкин on 12.11.2022.
//

import UIKit



class ChatViewController: UIViewController, UITextViewDelegate {
   
    
    
    @IBOutlet weak var messageTextView: UITextView!
    
    
    
    var navBar = UINavigationBar(frame: CGRect(x: 0, y: 50, width: UIScreen.main.bounds.width, height: 70))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setNavigationBar()
        messageTextView.layer.cornerRadius = messageTextView.bounds.height / 2 - 5
        
        self.tabBarController?.tabBar.isHidden = true
      
        
     
    }
   
    
    func setNavigationBar() {
       
        let navItem = UINavigationItem(title: "Поддержка")
        let backImage = UIImage(named: "backImage")
        let backButton = UIBarButtonItem(image: backImage, style: .plain, target: nil, action: #selector(backButtonTapped))
        backButton.tintColor = UIColor(red: 0.50, green: 0.50, blue: 0.50, alpha: 1.00)
      
        navBar.setItems([navItem], animated: false)
        navBar.backgroundColor = .white
        navBar.barTintColor = .white

        navItem.leftBarButtonItem = backButton
        
        self.view.addSubview(navBar)
    }
    
    @objc func backButtonTapped() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileVc")
        vc?.modalPresentationStyle = .fullScreen
        vc?.modalTransitionStyle = .crossDissolve
        self.present(vc!, animated: true)
        
        
    }
    
  
}
