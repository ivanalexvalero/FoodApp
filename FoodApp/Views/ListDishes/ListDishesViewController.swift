//
//  ListDishesViewController.swift
//  FoodApp
//
//  Created by Ivan Valero on 17/12/2021.
//

import UIKit
import ProgressHUD

class ListDishesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    var category: CategoryModel!
    var dishes: [DishModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = category.name
        registerCell()
        
        ProgressHUD.show()
        
        NetworkService.shared.fetchCategioriesDishes(categoryID: category.id ?? "") { [weak self] (result) in
            switch result {
            case .success(let dishes):
                ProgressHUD.dismiss()
                self?.dishes = dishes
                self?.tableView.reloadData()
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
    }
    
    private func registerCell() {
        tableView.register(UINib(nibName: DishListTableViewCell.kId, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.kId)
    }

}


extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.kId) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let controller = DishDetailViewController.instantiate()
            controller.dish = dishes[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
    }
}

