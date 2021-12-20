//
//  HomeViewController.swift
//  FoodApp
//
//  Created by Ivan Valero on 25/11/2021.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController {

    
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    
    
    var categories: [CategoryModel] = [
        .init(id: "id1", name: "Empanadas", image: "https://picsum.photos/100/100"),
        .init(id: "id2", name: "Empanadas", image: "https://picsum.photos/100/100"),
        .init(id: "id3", name: "Empanadas", image: "https://picsum.photos/100/100"),
        .init(id: "id4", name: "Empanadas", image: "https://picsum.photos/100/100"),
        .init(id: "id5", name: "Empanadas", image: "https://picsum.photos/100/100")
    ]
    
    
    var populars: [DishModel] = [
        .init(id: "id1", title: "Pizza", description: "Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón", image: "https://picsum.photos/100/100", calories: 30.346612),
        .init(id: "id1", title: "Pizza", description: "Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón,Pizza especial con jamon, aceitunas y morrón", image: "https://picsum.photos/100/200", calories: 30.346612),
        .init(id: "id1", title: "Pizza", description: "Pizza especial con jamon, aceitunas y morrón", image: "https://picsum.photos/100/100", calories: 30.346612),
        .init(id: "id1", title: "Pizza", description: "Pizza especial con jamon, aceitunas y morrón", image: "https://picsum.photos/100/100", calories: 30.346612),
        .init(id: "id1", title: "Pizza", description: "Pizza especial con jamon, aceitunas y morrón", image: "https://picsum.photos/100/100", calories: 30.346612),
        .init(id: "id1", title: "Pizza", description: "Pizza especial con jamon, aceitunas y morrón", image: "https://picsum.photos/100/100", calories: 30.346612),
    ]
    
    
    var specials: [DishModel] = [
        .init(id: "id1", title: "Canelones", description: "De espinaca, con salsa roja y salsa blanca a elección-De espinaca, con salsa roja y salsa blanca a elección-De espinaca, con salsa roja y salsa blanca a elección", image: "https://picsum.photos/100/100", calories: 41.9921),
        .init(id: "id1", title: "Canelones", description: "De espinaca, con salsa roja y salsa blanca a elección", image: "https://picsum.photos/100/100", calories: 41.9921),
        .init(id: "id1", title: "Canelones", description: "De espinaca, con salsa roja y salsa blanca a elección", image: "https://picsum.photos/100/100", calories: 41.9921),
        .init(id: "id1", title: "Canelones", description: "De espinaca, con salsa roja y salsa blanca a elección-De espinaca, con salsa roja y salsa blanca a elección-De espinaca, con salsa roja y salsa blanca a elección", image: "https://picsum.photos/100/100", calories: 41.9921),
        .init(id: "id1", title: "Canelones", description: "De espinaca, con salsa roja y salsa blanca a elección", image: "https://picsum.photos/100/100", calories: 41.9921),
        .init(id: "id1", title: "Canelones", description: "De espinaca, con salsa roja y salsa blanca a elección", image: "https://picsum.photos/100/100", calories: 41.9921),
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Food App"
        
        registerCells()
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.kIdentifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.kIdentifier)
    
        popularCollectionView.register(UINib(nibName: PopularCollectionViewCell.kId, bundle: nil), forCellWithReuseIdentifier: PopularCollectionViewCell.kId)
        
        specialCollectionView.register(UINib(nibName: SpecialCollectionViewCell.kidSpecial, bundle: nil), forCellWithReuseIdentifier: SpecialCollectionViewCell.kidSpecial)

    }
   

}



extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case categoryCollectionView:
                return categories.count
        case popularCollectionView:
                return populars.count
        case specialCollectionView:
                return specials.count
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        switch collectionView {
        case categoryCollectionView:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.kIdentifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.kId, for: indexPath) as! PopularCollectionViewCell
            cell.setup(popular: populars[indexPath.row])
            return cell
        case specialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SpecialCollectionViewCell.kidSpecial, for: indexPath) as! SpecialCollectionViewCell
            cell.setup(special: specials[indexPath.row])
            return cell
        default: return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoryCollectionView {
            let controller = ListDishesViewController.instantiate()
            controller.category = categories[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        } else {
            
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == popularCollectionView ? populars[indexPath.row] : specials[indexPath.row]
            
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
}
