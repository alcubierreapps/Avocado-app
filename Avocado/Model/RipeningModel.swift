//
//  RipeningModel.swift
//  Avocado
//
//  Created by Alcubierre Holdings Inc. on 2021-12-17.
//

import SwiftUI

//Mar: - Ripening Model

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
