//
//  IngredientView.swift
//  Recipes-Groceries
//
//  Created by Luis Alejandro Ramirez Suarez on 12/08/22.
//

import SwiftUI

struct IngredientView: View {
    @ObservedObject var viewModel: IngredientViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("Nombre", text: self.$viewModel.ingredient.name)
            
            NavigationLink {
                IngredientTypeView(ingredientViewModel: self.viewModel)
            } label: {
                HStack {
                    Text("Tipo de Ingrediente: ")
                    Spacer()
                    Text(self.viewModel.ingredient.type.rawValue)
                }
            }
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IngredientView(viewModel: .init(ingredient: Ingredient(name: "Ingredient", type: .Other)))
        }
    }
}
