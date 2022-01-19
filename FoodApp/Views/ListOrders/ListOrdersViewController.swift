//
//  ListOrdersViewController.swift
//  FoodApp
//
//  Created by Ivan Valero on 20/12/2021.
//

import UIKit

class ListOrdersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var orders: [OrdersModel] = [
        .init(id: "id1", title: "Iván Valero", dish:
                    .init(id: "id1", title: "Pizza", description: "Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón", image: "https://picsum.photos/100/100", calories: 33)),
        .init(id: "id2", title: "Kevin Valero", dish:
                    .init(id: "id2", title: "Empanadas Criollas", description: "Empanadas criollas frítas con jamon, queso y aceitunas.", image: "https://picsum.photos/100/100", calories: 41))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Perdidos"
        registerCells()
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.kId, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.kId)
    }
    
    func setup(dish: DishModel) {
        
    }
    
}

extension ListOrdersViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.kId) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
