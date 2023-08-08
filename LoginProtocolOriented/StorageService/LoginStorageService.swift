//
//  LoginStorageService.swift
//  LoginProtocolOriented
//
//  Created by Doğukan Küçükler on 8.08.2023.
//

import Foundation

protocol LoginStorageService {
    var userAccessTokenKey : String {get}
    func setUserAccessToken(token: String)
    func getUserAccessToken() -> String?
}
