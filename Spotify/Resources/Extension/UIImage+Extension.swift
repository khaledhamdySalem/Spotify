//
//  UIImage+Extension.swift
//  BuilldAppStore
//
//  Created by Khaled on 31/03/2022.
//

import UIKit

extension UIImageView {
    convenience init(cornerRadius: CGFloat) {
        self.init(image: nil)
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill
    }
}
