//
//  AllDishes.swift
//  FoodApp
//
//  Created by Ivan Valero on 18/01/2022.
//

import Foundation


struct AllDishes: Decodable {
    let categories: [CategoryModel]?
    let specials: [DishModel]?
    let populars: [DishModel]?
}
