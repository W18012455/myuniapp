//
//  AuthManager.swift
//  Spotify
//
//  Created by Daniel Kenny on 10/04/2022.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "6afa27e3795349d3aaced73e83f5a93b"
        static let clientSecret = "bfd17b8a1c744118b76b64d02500eb3d"
    }
    
    private init() {}
    
    public var signInUrl: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.iosacademy.io"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=true"
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
    
    private var shouldRefreshToken: Bool {
        return false
    }

    public func exchangeCodeForToken(code: String, completion: @escaping (Bool) -> Void)
    {
        //Get Token
    }
    public func refreshAccessToken() {
        
    }
    
    
    private func cacheToken() {
        
    }
}
