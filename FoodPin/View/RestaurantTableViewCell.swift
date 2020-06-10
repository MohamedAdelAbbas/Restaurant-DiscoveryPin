//
//  RestaurantTableViewCell.swift
//  FoodPin
//
//  Created by Mohamed Adel on 2/10/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!{
        

 didSet {
        thumbnailImageView.layer.cornerRadius = thumbnailImageView.bounds.width / 2
            thumbnailImageView.clipsToBounds = true
        }
    }
    @IBOutlet var heartImageView: UIImageView!

   
}
