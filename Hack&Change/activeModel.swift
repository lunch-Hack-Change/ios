//
//  activeModel.swift
//  Hack&Change
//
//  Created by Максим Половинкин on 12.11.2022.
//

import Foundation

import UIKit


struct active {
    var image: UIImage
    
    static func fetchActives() -> [active]{
        let firstBanner = active(image: UIImage(named: "banner1")!)
        let secondBanner = active(image: UIImage(named: "banner2")!)
        let firdtBanner = active(image: UIImage(named: "banner3")!)
        
        return [firstBanner, secondBanner, firdtBanner]
    }
}
