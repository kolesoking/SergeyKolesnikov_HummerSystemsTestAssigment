//
//  TabBarConfigure.swift
//  SergeyKolesnikov_HummerSystemsTestAssigment
//
//  Created by Sergey Kolesnikov on 13.10.2022.
//

import UIKit

final class TabBarConfigure {
    
    // MARK: - Private Properties
    
    private let allTab: [TabBarModel] = [.menu, .contacts, .profile, .bag]
    
    // MARK: - Methods
    
    func configure() -> UITabBarController {
    
        return getTabBarController()
    }
}

// MARK: - Private Methods

private extension TabBarConfigure {
    
    func getTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        
        tabBarController.tabBar.tintColor = Colors.TabBar.tintColor
        tabBarController.tabBar.unselectedItemTintColor = Colors.TabBar.unselectedTintColor
        tabBarController.tabBar.backgroundColor = Colors.TabBar.backgroundColor
        tabBarController.viewControllers = getControllers()
        
        return tabBarController
    }
    
    func getControllers() -> [UIViewController] {
        var viewControllers = [UIViewController]()
        
        allTab.forEach { tab in
            let controller = getCurentViewController(tab: tab)
            let tabBarItem = UITabBarItem(title: tab.title, image: tab.image, selectedImage: tab.selectedImage)
            controller.tabBarItem = tabBarItem
            
            viewControllers.append(controller)
        }
        
        return viewControllers
    }
    
    func getCurentViewController(tab: TabBarModel) -> UIViewController {
        switch tab {
        case .menu:
            return MainViewController()
        case .contacts:
            return MainViewController()
        case .profile:
            return MainViewController()
        case .bag:
            return MainViewController()
        }
    }
}
