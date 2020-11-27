//
//  Stressor.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/10/2020.
//

import SwiftUI

struct StressorItem: View {
    var stressor: Stressor
    
    var body: some View {
        VStack{
            Text(stressor.name)
                .textCase(.lowercase)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor(ciColor: CIColor(string: stressor.colour))))
        .foregroundColor(.white)
    }
}

struct Stressor_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            StressorItem(stressor: Stressor(name: "health", colour: CIColor(color: UIColor.blue).stringRepresentation, comments: "", size:1))
            StressorItem(stressor: Stressor(name: "career", colour: CIColor(color: UIColor.red).stringRepresentation, comments: "", size:1))
        }.previewLayout(.fixed(width: 300, height: 30))
    }
}
