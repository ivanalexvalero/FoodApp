//
//  ListDishesViewController.swift
//  FoodApp
//
//  Created by Ivan Valero on 17/12/2021.
//

import UIKit

class ListDishesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    var category: CategoryModel!
    var dishes: [DishModel] = [
        .init(id: "id1", title: "Canelones", description: "De espinaca, con salsa roja y salsa blanca a elección-De espinaca, con salsa roja y salsa blanca a elección-De espinaca, con salsa roja y salsa blanca a elección", image: "https://picsum.photos/100/100", calories: 41.9921),
        .init(id: "id2", title: "Canelones", description: "De espinaca, con salsa roja y salsa blanca a elección", image: "https://picsum.photos/100/100", calories: 41.9921)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = category.name
        registerCell()
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

