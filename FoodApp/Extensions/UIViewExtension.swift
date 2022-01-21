//
//  UIViewExtension.swift
//  FoodApp
//
//  Created by Ivan Valero on 19/11/2021.
//

import UIKit


extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
