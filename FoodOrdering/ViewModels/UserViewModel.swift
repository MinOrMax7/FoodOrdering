//
//  UserViewModel.swift
//  FoodOrdering
//
//  Created by Mingxin Xie on 7/4/24.
//

import Foundation

import Foundation

class UserViewModel: ObservableObject{
    @Published var user: User

    init() {
        self.user = User(firstName: "", lastName: "", email: "", isLoggedIn: false)
    }
    
    
}
