//
//  CategoryCollectionViewCell.swift
//  FoodApp
//
//  Created by Ivan Valero on 25/11/2021.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    
    func setup(category: CategoryModel) {
        categoryTitle.text = category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
        
    }
    
}
