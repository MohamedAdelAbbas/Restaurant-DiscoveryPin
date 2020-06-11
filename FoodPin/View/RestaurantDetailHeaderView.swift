//
//  RestaurantDetailHeaderView.swift
//  FoodPin
//
//  Created by Mohamed Adel on 6/11/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class RestaurantDetailHeaderView: UIView {

    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!{
        didSet {
        typeLabel.layer.cornerRadius = 5.0
        typeLabel.layer.masksToBounds = true
        }
    }
    @IBOutlet var heartImageView: UIImageView!
    
   
    
}
