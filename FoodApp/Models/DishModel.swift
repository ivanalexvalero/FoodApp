//
//  PopularModel.swift
//  FoodApp
//
//  Created by Ivan Valero on 03/12/2021.
//

import Foundation



struct DishModel {
    let id, title, description, image: String?
    let calories: Double?
    
    
    var formatCalories: String {
        return String(format: "%.2f calories", calories ?? 0)
    }
}
