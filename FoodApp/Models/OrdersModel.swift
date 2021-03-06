//
//  OrdersModel.swift
//  FoodApp
//
//  Created by Ivan Valero on 20/12/2021.
//

import Foundation


struct OrdersModel: Decodable {
    let id: String?
    let title: String?
    let dish: DishModel?
    
    enum CodingKeys: String, CodingKey{
        case id
        case title = "name"
        case dish
    }
}
