//
//  IngredientsListViewModel.swift
//  Recipes-Groceries
//
//  Created by Luis Alejandro Ramirez Suarez on 12/08/22.
//

import Foundation
import SwiftUI

final class IngredientsListViewModel: ObservableObject {
    @Published var ingredients: [IngredientViewModel]
    
    init(initialIngredients: [IngredientViewModel] = []) {
        self.ingredients = initialIngredients
    }
    
    func addNewIngredient(_ viewModel: IngredientViewModel) {
        self.ingredients.append(viewModel)
    }
    
    func removeIngredient(_ index: Int) {
        self.ingredients.remove(at: index)
    }
}
