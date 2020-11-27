//
//  BottledStressors.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/10/2020.
//

import SwiftUI

class BottledStressors: ObservableObject {
    @Published var stressors: [Stressor] {
        didSet {
            save(this: stressors, "stressorData.json")
        }
    }
    @Published var addingStressor: Bool
    
    init() {
        self.addingStressor = false
        
        if let data: [Stressor] = load("stressorData.json") {
            self.stressors = data
            return
        }

        self.stressors = []
    }
}
