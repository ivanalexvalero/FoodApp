//
//  SpecialCollectionViewCell.swift
//  FoodApp
//
//  Created by Ivan Valero on 06/12/2021.
//

import UIKit
import SwiftUI
import Kingfisher

class SpecialCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var specialImage: UIImageView!
    @IBOutlet weak var titleSpecial: UILabel!
    @IBOutlet weak var descriptionSpecial: UILabel!
    @IBOutlet weak var caloriesSpecial: UILabel!
    
    static let kidSpecial = "SpecialCollectionViewCell"
    
    
    func setup(special: DishModel) {
        specialImage.kf.setImage(with: special.image?.asUrl)
        titleSpecial.text = special.title
        descriptionSpecial.text = special.description
        caloriesSpecial.text = special.formatCalories
    }
    
}
