//
//  AboutTableViewController.swift
//  FoodPin
//
//  Created by Mohamed Adel on 6/21/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class AboutTableViewController: UITableViewController {
    //MARK: Outlet
    
    //MARK: Properties
    var sectionTitles = ["Feedback", "Follow Us"]
    var sectionContent = [[(image: "store", text: "Rate us on App Store",
                            link: "https://www.apple.com/itunes/charts/paid-apps/"),
                           (image: "chat", text: "Tell us your feedback",
                            link: "http://www.appcoda.com/contact")],
                          [(image: "twitter", text: "Twitter",
                            link: "https://twitter.com/appcodamobile"),
                           (image: "facebook", text: "Facebook",
                            link: "https://facebook.com/appcodamobile"),
                           (image: "instagram", text: "Instagram",
                            link: "https://www.instagram.com/appcodadotcom")]]
    // MARK: - View controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
    }
    //MARK: Action
    
    // MARK: Class Methods
    func setupNavBar(){
        tableView.cellLayoutMarginsFollowReadableWidth = true
        navigationController?.navigationBar.prefersLargeTitles = true
        // Configure navigation bar appearance
        navigationController?.navigationBar.setBackgroundImage(UIImage(),for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        if let customFont = UIFont(name: "Rubik-Medium", size: 40.0) {
            navigationController?.navigationBar.largeTitleTextAttributes = [ NSAttributedString.Key.foregroundColor: UIColor(red: 231, green: 76, blue: 60), NSAttributedString.Key.font: customFont ]
        }
        tableView.tableFooterView = UIView()//remove the extra separator
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionTitles.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sectionContent[section].count
        
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section:
        Int) -> String? {
        return sectionTitles[section]
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutCell", for: indexPath)
        // Configure the cell...
        let cellData = sectionContent[indexPath.section][indexPath.row]
        cell.textLabel?.text = cellData.text
        cell.imageView?.image = UIImage(named: cellData.image)
        return cell
    }
    // MARK: - Table view Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let link = sectionContent[indexPath.section][indexPath.row].link
        switch indexPath.section {
        // Leave us feedback section
        case 0:
            if indexPath.row == 0 {
                if let url = URL(string: link) {
                    UIApplication.shared.open(url)
                }
            } else if indexPath.row == 1 {
                performSegue(withIdentifier: "showWebView", sender: self)
            }
        default:
            break
        }
        tableView.deselectRow(at: indexPath, animated: false)
    }
    //MARK:Navgation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebView" {
            if let destinationController = segue.destination as? WebViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                destinationController.targetURL = sectionContent[indexPath.section][indexPath.row].link
            }
        }
    }
}

