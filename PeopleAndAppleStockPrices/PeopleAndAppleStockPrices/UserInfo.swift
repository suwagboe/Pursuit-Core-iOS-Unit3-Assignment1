//
//  UserInfo.swift
//  PeopleAndAppleStockPrices
//
//  Created by Pursuit on 12/9/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct User: Codable {
    let results: [UserInfo]
}

struct UserInfo: Codable {
    let name: Name
    let location: Location
    let picture: Picture
    let email: String
}

struct Name: Codable {
   // let title: String
    let first: String
    let last: String
}

struct Location: Codable {
    let street: String
    let city: String
    let state: String
}

struct Picture: Codable {
    let large: String
}
//name of the contact and their locatio
//A UIImage with the default profile image
//At least three labels to hold more information from the contact

extension UserInfo{
    static func getUserInfo() -> [UserInfo] {
        var userInfo = [UserInfo]()
        
    guard let fileUrl = Bundle.main.url(forResource: "userinfo", withExtension: "json") else {
           fatalError("couldn't locate the file")
       }
       do {
          let data = try Data(contentsOf: fileUrl)
           let specificUser = try JSONDecoder().decode(User.self, from: data)
        // this wrong and I dont know why... 
        userInfo = specificUser.results
       } catch {
           fatalError("passing info from json file doesn't work \(error)")
       }
        return userInfo
    }
}
