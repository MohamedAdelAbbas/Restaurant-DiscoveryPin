//
//  WalkthroughViewController.swift
//  FoodPin
//
//  Created by Mohamed Adel on 6/20/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController {
    //MARK: Outlet
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var nextButton: UIButton! {
        didSet {
            nextButton.layer.cornerRadius = 25.0
            nextButton.layer.masksToBounds = true
        }
    }
    @IBOutlet var skipButton: UIButton!
    
    //MARK: Properties

    // MARK: - View controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
}
