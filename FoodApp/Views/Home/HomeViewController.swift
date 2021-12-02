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
    
    
    
    var categories: [CategoryModel] = [
        .init(id: "id1", name: "Empanadas", image: "https://picsum.photos/100/100"),
        .init(id: "id2", name: "Empanadas", image: "https://picsum.photos/100/100"),
        .init(id: "id3", name: "Empanadas", image: "https://picsum.photos/100/100"),
        .init(id: "id4", name: "Empanadas", image: "https://picsum.photos/100/100"),
        .init(id: "id5", name: "Empanadas", image: "https://picsum.photos/100/100")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Food App"
        
        registerCells()
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.kIdentifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.kIdentifier)
        
        
        
        
        
        popularCollectionView.register(UINib(nibName: CategoryCollectionViewCell.kIdentifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.kIdentifier)
    }
   

}



extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.kIdentifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        return cell
    }
    
    
}
