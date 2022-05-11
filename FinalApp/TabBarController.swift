//
//  TabBarController.swift
//  FinalApp
//
//  Created by Jose Salazar Mendez on 4/29/22.
//
import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{
    
    var firstItemImageView: UIImageView!
    var secondItemImageView: UIImageView!

    override func viewDidLoad() {
        self.delegate = self
        super.viewDidLoad()
        tabBarItem.badgeColor = UIColor(red:0.49, green:0.84, blue:0.87, alpha:1.0)
        self.tabBar.tintColor = UIColor(red:0.49, green:0.84, blue:0.87, alpha:1.0)
    }

}
