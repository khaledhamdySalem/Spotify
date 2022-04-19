//
//  AuthViewController.swift
//  Spotify
//
//  Created by KH on 17/04/2022.
//

import UIKit
import WebKit

class AuthViewController: UIViewController, WKNavigationDelegate {
    
    // Tell The welcomeScreen That user success to login
    // or an error is happened
    public var completionHandler: ((Bool) -> Void)?
    
    
    private let webView: WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: config)
        return webView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        view.backgroundColor = .systemBackground
        webView.navigationDelegate = self
        view.addSubview(webView)
        
        guard let url = AuthManager.shared.signInURL else {return}
        webView.load(URLRequest(url: url))
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        guard let url = webView.url else {return}
        guard let code = URLComponents(string: url.absoluteString)?.queryItems?.first(where: {$0.name == "code"})?.value else { return}
        print(code)
    }
}


/* Code:
 AQB5bOYfgCxtojg5ZGr1jrS1uQxtCLnSUJK7Xa5yTSzYQPK0lRBA7QWS2Ail84V5p-0WcRXHrTogbjscmfvjSIGgIYXXoKSVRHgLepRLNPplMrwFQPqzPWnn3zI_QgEiB7Bv-GI6XqTI3-tRQdWf3wwVkSOwKP3ywnjpefwRMzA1G-XYW4SIvAyYUreqGEV5
 */
