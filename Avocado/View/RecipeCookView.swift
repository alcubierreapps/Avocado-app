//
//  RecipeCookView.swift
//  Avocado
//
//  Created by Alcubierre Holdings Inc. on 2021-12-17.
//

import SwiftUI

struct RecipeCookView: View {
    //Mark: - Properties
    
    var recipe: Recipe
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 12){
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

struct RecipeCookView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
