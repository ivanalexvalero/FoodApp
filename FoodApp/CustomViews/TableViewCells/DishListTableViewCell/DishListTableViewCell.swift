//
//  DishListTableViewCell.swift
//  FoodApp
//
//  Created by Ivan Valero on 17/12/2021.
//

import UIKit
import Kingfisher

class DishListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var dishListImage: UIImageView!
    @IBOutlet weak var dishListTitle: UILabel!
    @IBOutlet weak var dishListDescription: UILabel!
    
    static let kId = "DishListTableViewCell"
    
    
    func setup(dish: DishModel) {
        dishListImage.kf.setImage(with: dish.image?.asUrl)
        dishListTitle.text = dish.title
        dishListDescription.text = dish.description
    }
    
    func setup(order: OrdersModel) {
        dishListImage.kf.setImage(with: order.dish?.image?.asUrl)
        dishListTitle.text = order.dish?.title
        dishListDescription.text = order.title
    }
}
