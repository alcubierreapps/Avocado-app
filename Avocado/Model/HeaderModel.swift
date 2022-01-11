//
//  HeaderModel.swift
//  Avocado
//
//  Created by Alcubierre Holdings Inc. on 2021-12-15.
//

import SwiftUI

//Mark: - Header Model

struct Header: Identifiable{
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
