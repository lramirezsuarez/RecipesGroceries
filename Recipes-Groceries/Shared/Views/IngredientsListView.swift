//
//  IngredientsListView.swift
//  Recipes-Groceries
//
//  Created by Luis Alejandro Ramirez Suarez on 12/08/22.
//

import SwiftUI

struct IngredientsListView: View {
    @ObservedObject var appViewModel: AppViewModel
    @State var ingredientToAdd: IngredientViewModel?
    
    var body: some View {
        List {
            ForEach(self.appViewModel.ingredientListViewModel.ingredients) { viewModel in
                Text("\(viewModel.ingredient.name) - \(viewModel.ingredient.type.rawValue)")
            }.onDelete { indexSet in
                for index in indexSet {
                    self.appViewModel.ingredientListViewModel.removeIngredient(index)
                }
            }
        }
        .padding()
        .navigationTitle("Lista de Ingredientes")
        .toolbar {
            Button {
                self.ingredientToAdd = .init(ingredient: Ingredient(name: "", type: .Other))
            } label: {
                Image(systemName: "plus")
            }
            
        }
        .sheet(item: $ingredientToAdd) { ingredientToAdd in
            NavigationView {
                IngredientView(viewModel: ingredientToAdd)
                    .navigationTitle("Nuevo Ingrediente")
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancelar") { self.ingredientToAdd = nil }
                        }
                        ToolbarItem(placement: .primaryAction) {
                            Button("Guardar") {
                                guard !ingredientToAdd.ingredient.name.isEmpty else {
                                    return
                                }
                                
                                self.ingredientToAdd = nil
                                self.appViewModel.ingredientListViewModel.addNewIngredient(ingredientToAdd)
                            }
                        }
                    }
            }
        }
    }
}

struct IngredientsListView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsListView(appViewModel: .init(initialIngredients: [
            .init(name: "Leche", type: .Dairy),
            .init(name: "Queso", type: .Dairy)
        ]))
    }
}
