//
//  DishDetailViewController.swift
//  FoodApp
//
//  Created by Ivan Valero on 15/12/2021.
//

import UIKit
import Kingfisher
import ProgressHUD

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
        guard let name = detailName.text?.trimmingCharacters(in: .whitespaces), !name.isEmpty else {
            ProgressHUD.showError("Porfavor ingrese su nombre")
            return
        }
        ProgressHUD.show("Coloca tu orden...")
        NetworkService.shared.placeOrder(dishId: dish.id ?? "", name: name) { [weak self] (result) in
            switch result {
            case .success(_):
                ProgressHUD.showSucceed("Tu orden ha sido recibida👨🏻‍🍳")
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
    }
    
}
