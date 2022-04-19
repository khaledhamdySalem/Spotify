//
//  BackEnabledNavigationController.swift
//  BuilldAppStore
//
//  Created by Khaled on 04/04/2022.
//

import UIKit

class BackEnabledNavigationController: UINavigationController, UIGestureRecognizerDelegate {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.interactivePopGestureRecognizer?.delegate = self
    }
}
