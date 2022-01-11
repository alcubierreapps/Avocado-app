//
//  RecipeCardView.swift
//  Avocado
//
//  Created by Alcubierre Holdings Inc. on 2021-12-16.
//

import SwiftUI

struct RecipeCardView: View {
    //Mark: - Properties
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            //CARD IMAGE
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "bookmark")
                            .font(Font.title.weight(.light))
                            .foregroundColor(Color.white)
                            .imageScale(.small)
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                        .padding(.trailing, 10)
                        .padding(.top, 10)
                        }
                        Spacer()
                    }
                )
            //Card Recipe
            VStack(alignment: .leading, spacing: 12){
                //Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                //Headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                //Rates
               RecipeRatingView(recipe: recipe)
                
            
                //Cooking
                RecipeCookView(recipe: recipe)
                
            }
            .padding()
            .padding(.bottom, 12)
        
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y:0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal){
            RecipeDetailView(recipe: self.recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
