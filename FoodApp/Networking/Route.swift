//
//  Route.swift
//  FoodApp
//
//  Created by Ivan Valero on 23/12/2021.
//

import Foundation


enum Route {
    static let baseUrl = "https://yummie.glitch.me"
    
    case fetchAllCategories
    case placeOrder(String)
    case fetchCategioriesDishes(String)
    case fetchOrders
    
    var description: String {
        switch self {
        case .fetchAllCategories:
            return "/dish-categories"
        case .placeOrder(let dishId):
            return "/orders/\(dishId)"
        case .fetchCategioriesDishes(let categoryId):
            return "/dishes/\(categoryId)"
        case .fetchOrders:
            return "/orders"
        }
    }
}
