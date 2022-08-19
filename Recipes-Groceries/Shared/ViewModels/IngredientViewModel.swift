//
//  IngredientViewModel.swift
//  Recipes-Groceries
//
//  Created by Luis Alejandro Ramirez Suarez on 12/08/22.
//

import Foundation

final class IngredientViewModel: Identifiable, ObservableObject {
    @Published var ingredient: Ingredient
    
    var id: Ingredient.ID { ingredient.id }
    
    init(ingredient: Ingredient) {
        self.ingredient = ingredient
    }
}
