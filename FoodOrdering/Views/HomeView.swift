//
//  HomeView.swift
//  FoodOrdering
//
//  Created by Mingxin Xie on 7/1/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedIndex = 0
    @State var isLoggedIn: Bool
    @State var firstName: String
    @State var lastName: String
    @State var email: String
    
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex) {
                MenuView()
                .tabItem {
                    Text("Ordering")
                    Image(systemName: "info")
                    .renderingMode(.template)
                }
                .tag(0)
                    
                ProfileView(isLoggedIn: isLoggedIn, firstName: firstName, lastName: lastName, email: email)
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person")
                        .renderingMode(.template)
                }
                .tag(1)
            }
            .tint(Color("F4CE14"))
            .onAppear(perform: {
                UITabBar.appearance().unselectedItemTintColor = .systemBrown
                UITabBar.appearance().backgroundColor = .systemGray4.withAlphaComponent(0.3)
            })
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeView(isLoggedIn: true, firstName: "Mason", lastName: "Shieh", email: "ahj")
}
