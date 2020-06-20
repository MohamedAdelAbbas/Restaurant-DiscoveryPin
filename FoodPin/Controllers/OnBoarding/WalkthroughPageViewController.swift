//
//  WalkthroughPageViewController.swift
//  FoodPin
//
//  Created by Mohamed Adel on 6/20/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit
protocol WalkthroughPageViewControllerDelegate: class {
    func didUpdatePageIndex(currentIndex: Int)
}
class WalkthroughPageViewController: UIPageViewController {
    
    //MARK:Outlets
    
    // MARK: Proberties
    var pageHeadings = ["CREATE YOUR OWN FOOD GUIDE", "SHOW YOU THE LOCATION", "DISCOVER GREAT RESTAURANTS"]
    var pageImages = ["onboarding-1", "onboarding-2", "onboarding-3"]
    var pageSubHeadings = ["Pin your favorite restaurants and create your own food guide",
                           "Search and locate your favourite restaurant on Maps",
                           "Find restaurants shared by your friends and other foodies"]
    var currentIndex = 0
    weak var walkthroughDelegate: WalkthroughPageViewControllerDelegate?

    // MARK: - View controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the data source to itself
        dataSource = self
        delegate = self

        // Create the first walkthrough screen
        if let startingViewController = contentViewController(at: 0) {
            setViewControllers([startingViewController], direction: .forward, animated
                : true, completion: nil)
        }
        
    }
    // MARK: Class Methods
    func contentViewController(at index: Int) -> WalkthroughContentViewController? {
        if index < 0 || index >= pageHeadings.count {
            return nil
        }
        // Create a new view controller and pass suitable data.
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let pageContentViewController = storyboard.instantiateViewController(withIdentifier: "WalkthroughContentViewController") as? WalkthroughContentViewController
        {
            pageContentViewController.imageFile = pageImages[index]
            pageContentViewController.heading = pageHeadings[index]
            pageContentViewController.subHeading = pageSubHeadings[index]
            pageContentViewController.index = index
            return pageContentViewController
        }
        return nil
    }
    func forwardPage() {
        currentIndex += 1
        if let nextViewController = contentViewController(at: currentIndex) {
            setViewControllers([nextViewController], direction: .forward, animated: true,
                               completion: nil)
        }
    }
    
    //MARK: Action
    // MARK: Self Defined Methods
    

}

extension WalkthroughPageViewController:UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    // MARK: - UIPage data source
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkthroughContentViewController).index
        index -= 1
        return contentViewController(at: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkthroughContentViewController).index
        index += 1
        return contentViewController(at: index)
    }
    
    // MARK: - UIPage view delegate
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
           if completed {
               if let contentViewController = pageViewController.viewControllers?.first as? WalkthroughContentViewController {
                   currentIndex = contentViewController.index
                   walkthroughDelegate?.didUpdatePageIndex(currentIndex: contentViewController.index)
               }
           }
       }
}
