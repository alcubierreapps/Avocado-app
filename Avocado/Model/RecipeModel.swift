//
//  RecepieModel.swift
//  Avocado
//
//  Created by Alcubierre Holdings Inc. on 2021-12-16.
//

import SwiftUI

//MARK: - Recipe Model

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
