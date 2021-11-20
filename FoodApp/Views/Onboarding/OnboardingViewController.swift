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
    
    var slider: [OnboardingSlider] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextButtonAction(_ sender: Any) {
    }
}
