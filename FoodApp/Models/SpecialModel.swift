//
//  SpecialModel.swift
//  FoodApp
//
//  Created by Ivan Valero on 06/12/2021.
//

import Foundation



struct SpecialModel {
    let id, image, title, description: String?
    let calories: Double?
    
    
    var formatCaloriesSpecial: String {
        return String(format: "%.2f calories", calories ?? 0)
    }
    
}
