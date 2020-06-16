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
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetupBlurEffect()
        // start state
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        // Make the button invisible
        for rateButton in rateButtons {
            rateButton.transform = moveRightTransform // start state
            rateButton.alpha = 0
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.8, delay: 0.1, usingSpringWithDamping:0.2, initialSpringVelocity: 0.3, options: [], animations: {
                self.rateButtons[0].alpha = 1.0
                self.rateButtons[0].transform = .identity
        }, completion: nil)
       UIView.animate(withDuration: 0.8, delay: 0.1, usingSpringWithDamping:0.2, initialSpringVelocity: 0.3, options: [], animations: {
                self.rateButtons[1].alpha = 1.0
                self.rateButtons[1].transform = .identity
        }, completion: nil)
       UIView.animate(withDuration: 0.8, delay: 0.1, usingSpringWithDamping:0.2, initialSpringVelocity: 0.3, options: [], animations: {
                self.rateButtons[2].alpha = 1.0
                self.rateButtons[2].transform = .identity
        }, completion: nil)
        UIView.animate(withDuration: 0.8, delay: 0.1, usingSpringWithDamping:0.2, initialSpringVelocity: 0.3, options: [], animations: {
                self.rateButtons[3].alpha = 1.0
                self.rateButtons[3].transform = .identity
        }, completion: nil)
        UIView.animate(withDuration: 0.8, delay: 0.1, usingSpringWithDamping:0.2, initialSpringVelocity: 0.3, options: [], animations: {
                self.rateButtons[4].alpha = 1.0
                self.rateButtons[4].transform = .identity
        }, completion: nil)
    }
    func SetupBlurEffect(){
        backgroundImageView.image = UIImage(named: restaurant.image)
        // Applying the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
    }
}
