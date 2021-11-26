//
//  HomeViewController.swift
//  FoodApp
//
//  Created by Ivan Valero on 25/11/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [CategoryModel] = [
        .init(id: "id1", name: "Empanadas", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "Empanadas", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "Empanadas", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "Empanadas", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "Empanadas", image: "https://picsum.photos/100/200")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Food App"
    }
   

}



