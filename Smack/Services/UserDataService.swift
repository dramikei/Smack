//
//  UserDataService.swift
//  Smack
//
//  Created by Raghav Vashisht on 25/07/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import Foundation
class UserDataService {
    
    static let instance = UserDataService()
    public private(set) var id = ""
    public private(set) var avatarName = ""
    public private(set) var avatarColor = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarName = avatarName
        self.avatarColor = color
        self.email = email
        self.name = name
        
    }
    
    func setAvatarName(avatarName: String) {
        
        self.avatarName = avatarName
        
    }
    
}