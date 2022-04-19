//
//  VerticalStackView.swift
//  BuilldAppStore
//
//  Created by Khaled on 29/03/2022.
//

import UIKit

class VerticalStackView: UIStackView {
    init(arrangedSubview: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        arrangedSubview.forEach { view in
            addArrangedSubview(view)
        }
        
        self.spacing = spacing
        self.axis = .vertical
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
