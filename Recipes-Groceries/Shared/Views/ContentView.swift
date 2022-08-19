//
//  ContentView.swift
//  Shared
//
//  Created by Luis Alejandro Ramirez Suarez on 12/08/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var appViewModel: AppViewModel
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Ingredientes") {
                    IngredientsListView(appViewModel: self.appViewModel)
                }
                NavigationLink("Recetas") {
                    EmptyView()
                }
                NavigationLink("Mercado") {
                    EmptyView()
                }
            }
            .navigationTitle("Menu Principal")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let appViewModel = AppViewModel(initialIngredients: [
        .init(name: "Leche", type: .Dairy),
        .init(name: "Queso", type: .Dairy)
    ])
    
    static var previews: some View {
        ContentView(appViewModel: appViewModel)
    }
}
