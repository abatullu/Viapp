//
//  GradientModel.swift
//  Viapp
//
//  Created by Álvaro Romero Limón on 15/10/2018.
//  Copyright © 2018 Álvaro Romero Limón. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    func setGradientColor(colorOne: UIColor, colorTwo: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
}

struct Colors {
    
    static let colorUno = UIColor(red: 0.0/255.0, green: 180.0/255.0, blue: 219.0/255.0, alpha: 1.0)
    static let colorDos = UIColor(red: 0.0/255.0, green: 131.0/255.0, blue: 176.0/255.0, alpha: 1.0)
    static let colorTres = UIColor(red: 41.0/255.0, green: 128.0/255.0, blue: 185.0/255.0, alpha: 1.0)
    static let colorCuatro = UIColor(red: 44.0/255.0, green: 62.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    static let colorCinco = UIColor(red: 0.0/255.0, green: 210.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    static let colorSeis = UIColor(red: 58.0/255.0, green: 123.0/255.0, blue: 213.0/255.0, alpha: 1.0)
    
}
