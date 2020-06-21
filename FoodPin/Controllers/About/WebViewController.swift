//
//  WebViewController.swift
//  FoodPin
//
//  Created by Mohamed Adel on 6/21/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit
import WebKit
class WebViewController: UIViewController {
    // must insert WebKit Frmawork From Build phases
    @IBOutlet var webView: WKWebView!
    
    var targetURL = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        if let url = URL(string: targetURL) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
}
