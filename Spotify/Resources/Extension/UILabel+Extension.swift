//
//  UiExtension + Uilabel.swift
//  BuilldAppStore
//
//  Created by Khaled on 30/03/2022.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont, numberOfLines: Int = 0) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
        self.numberOfLines = numberOfLines
    }
}
