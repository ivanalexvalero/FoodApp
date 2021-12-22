//
//  UrlExtension.swift
//  FoodApp
//
//  Created by Ivan Valero on 25/11/2021.
//

import Foundation


extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
