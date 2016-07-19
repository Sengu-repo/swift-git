//
//  BaseTabBarController.swift
//  Thirukkural Daily
//
//  Created by SENGUTTUVAN NALLAPPAN on 14/2/20.
//  Copyright © 2020 SENGUTTUVAN NALLAPPAN. All rights reserved.
//

import UIKit

class BaseTabBarController : UITabBarController {
    
    
    let border : CALayer = {
       let border = CALayer()
        border.frame = CGRect(x: 0, y: 0, width: 1000, height: 0.5)
        border.backgroundColor = UIColor(white: 0.9, alpha: 1).cgColor
        return border
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        viewControllers = [createNavController(viewController: HomeController(), title: "Home", imageName: "HomeIcon"),
                           createNavController(viewController: UIViewController(), title:"Favorite", imageName: "Star"),
                           createNavController(viewController: CatagoryController(), title:"Catagory", imageName: "Catagory"),
                           createNavController(viewController: UIViewController(), title: "Setting", imageName: "Setting")]
        
        tabBar.isTranslucent = false
        tabBar.tintColor  = UIColor.darkGray
        tabBar.layer.addSublayer(border)
        tabBar.clipsToBounds = true
            
        modalPresentationCapturesStatusBarAppearance = true
    }
    
    
    
    fileprivate func createNavController(viewController:UIViewController, title: String, imageName: String) -> UIViewController{
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named:imageName)?.withRenderingMode(.alwaysTemplate)
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .white
        appearance.shadowColor = nil
        
        navController.navigationBar.standardAppearance = appearance
        navController.navigationBar.scrollEdgeAppearance = appearance
        navController.navigationBar.isTranslucent = false
        
        viewController.view.backgroundColor = .white
                    
        return navController
    }
        
}


