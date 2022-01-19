//
//  CategoryCollectionViewCell.swift
//  FoodApp
//
//  Created by Ivan Valero on 25/11/2021.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let kIdentifier = "CategoryCollectionViewCell"


    @IBOutlet weak var categoryImageView2: UIImageView!
    
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    func setup(category: CategoryModel) {
        categoryTitle.text = category.name
        categoryImageView2.kf.setImage(with: category.image?.asUrl)
    }
    
}
