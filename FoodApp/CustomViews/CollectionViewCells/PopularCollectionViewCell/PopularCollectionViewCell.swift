//
//  PopularCollectionViewCell.swift
//  FoodApp
//
//  Created by Ivan Valero on 01/12/2021.
//

import UIKit
import SwiftUI
import Kingfisher

class PopularCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titlePopular: UILabel!
    @IBOutlet weak var imagePopular: UIImageView!
    @IBOutlet weak var caloriesPopular: UILabel!
    @IBOutlet weak var descriptionPopular: UILabel!
    
    static let kId = "PopularCollectionViewCell"
    
    
    func setup(popular: DishModel) {
        titlePopular.text = popular.title
        imagePopular.kf.setImage(with: popular.image?.asUrl)
        caloriesPopular.text = popular.formatCalories
        descriptionPopular.text = popular.description
    }
    
}
