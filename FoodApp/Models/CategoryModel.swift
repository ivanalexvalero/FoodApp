//
//  CategoryModel.swift
//  FoodApp
//
//  Created by Ivan Valero on 25/11/2021.
//

import Foundation



struct CategoryModel: Decodable {
    let id, name, image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
