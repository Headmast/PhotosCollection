//
//  File.swift
//  PhotosCollection
//
//  Created by Kirill Klebanov on 25.07.2022.
//

import Foundation
import UIKit

class TabbarController: UITabBarController {
    
    override func viewDidLoad() {
        let firstVC = ViewController(title: "First")
        let firstItem = UITabBarItem(title: "Async", image: UIImage(systemName: "drop"), selectedImage: UIImage(systemName: "drop.fill"))
        firstVC.tabBarItem = firstItem
        let secondVC = OperationsViewController()
        let secondItem = UITabBarItem(title: "Dispet", image: UIImage(systemName: "leaf"), selectedImage: UIImage(systemName: "leaf.fill"))
        secondVC.tabBarItem = secondItem
        self.viewControllers = [firstVC, secondVC]
    }
    
}
