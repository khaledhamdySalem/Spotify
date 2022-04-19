//
//  AuthManager.swift
//  Spotify
//
//  Created by KH on 17/04/2022.
//

import UIKit

final class AuthManager {
  
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "5cde7500a88540aaa5df387f2ba3b08f"
        static let clientSecret = "d8fb5787ac98458392b6b7245954f0a7"
    }
  
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURL = "https://www.iosacademy.io"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURL)&show_dialog"
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool? {
        return false
    }
    
}
