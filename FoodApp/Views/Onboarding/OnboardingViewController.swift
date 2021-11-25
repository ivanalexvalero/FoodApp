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
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextButton.setTitle("Empezar", for: .normal)
            } else {
                nextButton.setTitle("Siguiente", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slides = [
            OnboardingSlider(title: "SELECCIONA TU PEDIDO", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.", image: #imageLiteral(resourceName: "FoodSelect") ),
            OnboardingSlider(title: "PÁGALO COMO QUIERAS", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.", image: #imageLiteral(resourceName: "Page") ),
            OnboardingSlider(title: "NOSOTROS TE LO LLEVAMOS", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.", image: #imageLiteral(resourceName: "Delivery") )
        ]

    }
    

    @IBAction func nextButtonAction(_ sender: Any) {
        
        if currentPage == slides.count - 1 {
            print("Siguiente Pagina")
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionControl.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
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
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        
    }
    
    
}
