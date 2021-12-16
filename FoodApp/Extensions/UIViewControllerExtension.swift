//
//  UIViewControllerExtension.swift
//  FoodApp
//
//  Created by Ivan Valero on 15/12/2021.
//

import UIKit


extension UIViewController {
    
//    var dish = DishModel!
    
    static var indentifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: indentifier) as! Self
    }
    
}
