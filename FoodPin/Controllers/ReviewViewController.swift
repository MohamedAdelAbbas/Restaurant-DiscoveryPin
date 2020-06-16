//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Mohamed Adel on 6/16/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!
    
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.image = UIImage(named: restaurant.image)
        
    }
    
}
