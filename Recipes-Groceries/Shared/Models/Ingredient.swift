//
//  Ingredient.swift
//  Recipes-Groceries
//
//  Created by Luis Alejandro Ramirez Suarez on 12/08/22.
//

import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    var name: String
    var type: IngredientType
    
    enum IngredientType: String, CaseIterable {
        case Beverages = "Bebidas"
        case Bread = "Pan"
        case Canned = "Enlatados"
        case Dairy = "Lacteos"
        case Baking = "Hornear"
        case Frozen = "Congelados"
        case Meat = "Carnes"
        case Fruits = "Frutas"
        case Vegetables = "Vegetales"
        case HouseCleaning = "Limpieza"
        case Bathroom = "Baño"
        case PersonalCare = "Aseo Personal"
        case Other = "Otros"
    }
}
