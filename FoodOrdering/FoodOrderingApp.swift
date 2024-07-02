//
//  FoodOrderingApp.swift
//  FoodOrdering
//
//  Created by Mingxin Xie on 7/1/24.
//

import SwiftUI

@main
struct FoodOrderingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
           OnboardingView(isLoggedIn: false)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
