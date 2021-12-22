//
//  DishDetailViewController.swift
//  FoodApp
//
//  Created by Ivan Valero on 15/12/2021.
//

import UIKit
import Kingfisher

class DishDetailViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailCalories: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    @IBOutlet weak var detailName: UITextField!
    
    var dish: DishModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popularView()
    }
    
    private func popularView() {
        detailImage.kf.setImage(with: dish.image?.asUrl)
        detailTitle.text = dish.title
        detailCalories.text = dish.formatCalories
        detailDescription.text = dish.description
    }
    
    
    @IBAction func detailButtonAction(_ sender: UIButton) {
    }
    
}
