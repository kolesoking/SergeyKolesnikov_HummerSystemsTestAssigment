//
//  TabBarModel.swift
//  SergeyKolesnikov_HummerSystemsTestAssigment
//
//  Created by Sergey Kolesnikov on 13.10.2022.
//

import UIKit

enum TabBarModel {
    case menu
    case contacts
    case profile
    case bag
    
    var title: String {
        switch self {
        case .menu:
            return "Меню"
        case .contacts:
            return "Контакты"
        case .profile:
            return "Профиль"
        case .bag:
            return "Корзина"
        }
    }
    
    var image: UIImage? {
        switch self {
        case .menu:
            return UIImage(named: "menu")
        case .contacts:
            return UIImage(named: "contacts")
        case .profile:
            return UIImage(named: "profile")
        case .bag:
            return UIImage(named: "bag")
        }
    }
    
    var selectedImage: UIImage? {
        return image
    }
}
