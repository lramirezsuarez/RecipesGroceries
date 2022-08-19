//
//  Recipes_GroceriesApp.swift
//  Shared
//
//  Created by Luis Alejandro Ramirez Suarez on 12/08/22.
//

import SwiftUI

@main
struct Recipes_GroceriesApp: App {
    let appViewModel = AppViewModel(initialIngredients: [
        .init(name: "Leche", type: .Dairy),
        .init(name: "Queso", type: .Dairy)
    ])
    
    var body: some Scene {
        WindowGroup {
            ContentView(appViewModel: appViewModel)
        }
    }
}
