//
//  FactModel.swift
//  Avocado
//
//  Created by Alcubierre Holdings Inc. on 2021-12-16.
//

import SwiftUI

//Mark: - Fact Model

struct Fact: Identifiable{
    var id = UUID()
    var image: String
    var content: String
}
