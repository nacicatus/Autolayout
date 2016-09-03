//
//  User.swift
//  AutolayoutPlayers
//
//  Created by Saurabh Sikka on 03/09/16.
//  Copyright (c) 2016 Saurabh Sikka. All rights reserved.
//

import Foundation

struct User {
    var name: String
    var company: String
    var login: String
    var password: String
    
    static func login(login: String, password: String) -> User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
        return nil
    }
    
    static let database: Dictionary<String, User> = {
        var theDatabase = Dictionary<String, User>()
        for user in [
            User(name: "Harry Potter", company: "Hogwarts", login: "hpotter", password: "foo"),
            User(name: "John Appleseed", company: "Apple", login: "japple", password: "foo")] {
                theDatabase[user.login] = user
        }
        return theDatabase
    }()
}