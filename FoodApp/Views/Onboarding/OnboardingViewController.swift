//
//  OnboardingViewController.swift
//  FoodApp
//
//  Created by Ivan Valero on 19/11/2021.
//

import UIKit

class OnboardingViewController: UIViewController {
    

    @IBOutlet weak var collectionControl: UICollectionView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlider] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slides = [
            OnboardingSlider(title: "SELECCIONA TU PEDIDO", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.", image: #imageLiteral(resourceName: "FoodSelect") ),
            OnboardingSlider(title: "PÁGALO COMO QUIERAS", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.", image: #imageLiteral(resourceName: "Page") ),
            OnboardingSlider(title: "NOSOTROS TE LO LLEVAMOS", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.", image: #imageLiteral(resourceName: "Delivery") )
        ]

    }
    

    @IBAction func nextButtonAction(_ sender: Any) {
    }
}




extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.kIdentifier, for: indexPath) as! OnboardingCollectionViewCell
        
        cell.setup(slides[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    
}
