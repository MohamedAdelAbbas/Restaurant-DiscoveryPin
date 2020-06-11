//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Mohamed Adel on 2/22/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
    // MARK: Outlets
    
    
    
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var headerView: RestaurantDetailHeaderView!
    
    // MARK: Properties
    var restaurant = Restaurant()
    
    // MARK: View Controller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        // Configure header view
        headerView.nameLabel.text = restaurant.name
        headerView.typeLabel.text = restaurant.type
        headerView.headerImageView.image = UIImage(named: restaurant.image)
        headerView.heartImageView.isHidden = (restaurant.isVisited) ? false : true
    }
    // MARK: Action
    
    // MARK: Class Methods
    
    // MARK: Self Defined Methods
    
    
}

extension RestaurantDetailViewController{
    
    
    // MARK: - Table view data source
    
    // MARK: - Table view delegate
}
