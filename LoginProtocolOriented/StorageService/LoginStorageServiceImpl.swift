//
//  LoginStorageServiceImpl.swift
//  LoginProtocolOriented
//
//  Created by Doğukan Küçükler on 8.08.2023.
//

import Foundation


class LoginStorageServiceImpl : LoginStorageService {


    private let storage = UserDefaults.standard
    
    var userAccessTokenKey: String {
        return "ACCESS_TOKEN"
    }
    
    func setUserAccessToken(token: String) {
        storage.set(token, forKey: userAccessTokenKey)
    }
    
    func getUserAccessToken() -> String? {
        return storage.string(forKey: userAccessTokenKey)
    }
    
    
    
    
    
    
    
    
}


