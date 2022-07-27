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
        
        let secondVC = LabelUI().getViewController()
        //OperationsViewController()
        let secondItem = UITabBarItem(title: "Dispet", image: UIImage(systemName: "leaf"), selectedImage: UIImage(systemName: "leaf.fill"))
        secondVC.tabBarItem = secondItem
        
        let thirdVC = StackUI().getViewController()
        let thirdItem = UITabBarItem(title: "StackUI", image: UIImage(systemName: "rectangle.portrait.and.arrow.right"), selectedImage: UIImage(systemName: "rectangle.portrait.and.arrow.right.fill"))
        thirdVC.tabBarItem = thirdItem
        
        self.viewControllers = [firstVC, secondVC, thirdVC]
    }
    
}
