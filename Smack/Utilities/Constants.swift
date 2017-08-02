//
//  Constants.swift
//  Smack
//
//  Created by Raghav Vashisht on 20/07/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ success: Bool) -> ()

// URL Constants

let BASE_URL = "http://192.168.1.55:3005/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
let URL_USER_BY_EMAIL = "\(BASE_URL)user/byEmail/"
let URL_GET_CHANNELS = "\(BASE_URL)/channel/"


// Colors
let smackPurplePlaceHolder = #colorLiteral(red: 0.3254901961, green: 0.4215201139, blue: 0.7752227187, alpha: 0.45)

// Notification Constants

let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")

// Segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedin"
let USER_EMAIL = "useremail"

// Header
let HEADER = [
    "Content-type": "application/json; charset=utf-8"
]

let BEARER_HEADER = [
    "Authorization" : "Bearer \(AuthService.instance.authToken)",
    "Content-type": "application/json; charset=utf-8"
]
