//
//  AppViewModel.swift
//  Recipes-Groceries
//
//  Created by Luis Alejandro Ramirez Suarez on 19/08/22.
//

import Foundation

final class AppViewModel: ObservableObject {
    @Published var ingredientListViewModel: IngredientsListViewModel
    
    init(initialIngredients: [Ingredient]) {
        let viewModels = initialIngredients.map { IngredientViewModel(ingredient: $0) }
        self.ingredientListViewModel = .init(initialIngredients: viewModels)
    }
}
