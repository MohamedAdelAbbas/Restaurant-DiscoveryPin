//
//  WalkthroughContentViewController.swift
//  FoodPin
//
//  Created by Mohamed Adel on 6/20/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class WalkthroughContentViewController: UIViewController {
    //MARK: Outlet
    @IBOutlet var headingLabel: UILabel!
    @IBOutlet var subHeadingLabel: UILabel!
    @IBOutlet var contentImageView: UIImageView!
    
    //MARK: Properties
    var index = 0
    var heading = ""
    var subHeading = ""
    var imageFile = ""
    
    // MARK: - View controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        headingLabel.text = heading
        subHeadingLabel.text = subHeading
        contentImageView.image = UIImage(named: imageFile)
        
    }
    
    
}
