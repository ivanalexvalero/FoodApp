//
//  OnboardingCollectionViewCell.swift
//  FoodApp
//
//  Created by Ivan Valero on 19/11/2021.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let kIdentifier = "OnboardingCollectionViewCell"
    
    @IBOutlet weak var imageSlide: UIImageView!
    @IBOutlet weak var titleSlide: UILabel!
    @IBOutlet weak var descriptionSlide: UILabel!
    
    func setup(_ slide: OnboardingSlider) {
        imageSlide.image = slide.image
        titleSlide.text = slide.title
        descriptionSlide.text = slide.description
    }
    
}
