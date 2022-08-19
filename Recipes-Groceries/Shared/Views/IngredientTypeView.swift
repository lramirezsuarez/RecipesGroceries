//
//  IngredientTypeView.swift
//  Recipes-Groceries
//
//  Created by Luis Alejandro Ramirez Suarez on 19/08/22.
//

import SwiftUI

struct IngredientTypeView: View {
    @ObservedObject var ingredientViewModel: IngredientViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section(header: Text("Tipos de Ingrediente")) {
                ForEach(Ingredient.IngredientType.allCases, id: \.self) { type in
                    Button(action: {
                        self.ingredientViewModel.ingredient.type = type
                        self.dismiss()
                    }) {
                        HStack {
                            Text(type.rawValue)
                            Spacer()
                            if self.ingredientViewModel.ingredient.type == type {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            }
        }
    }
}

struct IngredientTypeView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientTypeView(ingredientViewModel: .init(ingredient: Ingredient(name: "Prueba", type: .Baking)))
    }
}
