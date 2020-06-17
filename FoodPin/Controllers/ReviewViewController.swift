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
    @IBOutlet var rateButtons: [UIButton]!
    @IBOutlet weak var closeButton: UIButton!
   // var restaurant = Restaurant()
    var restaurant: RestaurantMO!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetupBlurEffect()
        // start state
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        let scaleUpTransform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)
        // Make the button invisible and move off the screen
        for rateButton in rateButtons {
            rateButton.transform = moveScaleTransform
            rateButton.alpha = 0
        }
        // Move up the closee button
        let moveUpTransform = CGAffineTransform.init(translationX: 0, y: -400)
        closeButton.transform = moveUpTransform
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        for index in 0...4 {
            UIView.animate(withDuration: 0.4, delay: (0.1 + 0.05 * Double(index)), usingSpringWithDamping:0.2, initialSpringVelocity: 0.3, options: [], animations: {
                self.rateButtons[index].alpha = 1.0
                self.rateButtons[index].transform = .identity
            }, completion: nil)
        }
        
        UIView.animate(withDuration: 0.4) {
            self.closeButton.transform = .identity
        }
    }
    
    func SetupBlurEffect(){
        if let restaurantImage = restaurant.image {
            backgroundImageView.image = UIImage(data: restaurantImage as Data)
        }
        // Applying the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
    }
}
