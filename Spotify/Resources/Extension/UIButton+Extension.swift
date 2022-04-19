//
//  UIButton+Extension.swift
//  BuilldAppStore
//
//  Created by Khaled on 31/03/2022.
//

import UIKit

extension UIButton {
    convenience init(title: String) {
        self.init(type: .system)
        self.setTitle(title, for: .normal)
    }
}
