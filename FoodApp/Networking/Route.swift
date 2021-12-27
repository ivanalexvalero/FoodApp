//
//  Route.swift
//  FoodApp
//
//  Created by Ivan Valero on 23/12/2021.
//

import Foundation


enum Route {
    static let baseUrl = "https://foodapp.com"
    
    case temp
    
    var description: String {
        switch self {
        case .temp: return "/temp"
        }
    }
}
