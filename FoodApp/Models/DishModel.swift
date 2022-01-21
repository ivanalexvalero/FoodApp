//
//  PopularModel.swift
//  FoodApp
//
//  Created by Ivan Valero on 03/12/2021.
//

import Foundation



struct DishModel: Decodable {
    let id, title, description, image: String?
    let calories: Int?
    
    enum CodingKeys: String, CodingKey {
        case id
        case title = "name"
        case description
        case image
        case calories
    }
    
    var formatCalories: String {
        return "\(calories ?? 0) calorias"
    }
}
