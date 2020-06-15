//
//  UINavigationController+Ext.swift
//  FoodPin
//
//  Created by Mohamed Adel on 6/11/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    open override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
}
