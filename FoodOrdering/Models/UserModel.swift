//
//  UserModel.swift
//  FoodOrdering
//
//  Created by Mingxin Xie on 7/4/24.
//

import Foundation

// Define a user protocol for creating User model
protocol UserProtocol{
    var firstName: String {get set}
    var lastName: String {get set}
    var email: String {get set}
    var isLoggedIn: Bool {get set}
}

// User Model to represent a User object
struct User: UserProtocol{
    var firstName: String
    var lastName: String
    var email: String
    var isLoggedIn: Bool
}
