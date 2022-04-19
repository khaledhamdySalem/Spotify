//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by KH on 17/04/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let signButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .white
        btn.setTitle("Sign In With Spotify", for: .normal)
        btn.setTitleColor(.blue, for: .normal)
        return btn
    }()
    
    // MARK: -- LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
        view.backgroundColor = .systemGreen
        view.addSubview(signButton)
        signButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
    }
    
    // MARK: -- Create new action for sign in button
    @objc func didTapSignIn() {
        let authViewController = AuthViewController()
        authViewController.navigationItem.largeTitleDisplayMode = .never
        authViewController.completionHandler = { [weak self] success in
            DispatchQueue.main.async {
                self?.handleSignIn(success: success)
            }
        }
        navigationController?.pushViewController(authViewController, animated: true)
    }
    
    private func handleSignIn(success: Bool) {
        
    }
}

// MARK: -- Create sign In button
extension WelcomeViewController {
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configureButton()
    }
    
    func configureButton() {
        signButton.anchor(top: nil,
                          leading: view.leadingAnchor,
                          bottom: view.bottomAnchor,
                          trailing: view.trailingAnchor,
                          padding: .init(top: 0, left: 20, bottom: view.safeAreaInsets.bottom, right: 20),
                          size: .init(width: .zero, height: 50))
    }
}
