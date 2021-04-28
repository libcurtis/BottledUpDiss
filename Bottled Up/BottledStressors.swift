//
//  BottledStressors.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/10/2020.
//

import SwiftUI

class BottleViewState: ObservableObject {
    @Published var addingStressor: Bool
    
    init() {
        self.addingStressor = false
    }
}
