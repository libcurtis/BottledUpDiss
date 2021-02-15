//
//  Stressor.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/10/2020.
//

import SwiftUI

struct StressorItem: View {
    let name: String
    let colour: String
    let size: Int
    let totalSize: Int
    let dim: Int
    
    var body: some View {
        VStack{
            Text(name)
                .textCase(.lowercase)
        }
        .frame(maxWidth: .infinity,
               minHeight: self.getHeight())
        .background(Color(UIColor(ciColor: CIColor(string: colour))))
        .foregroundColor(.white)
    }
    
    func getHeight() -> CGFloat {
        return CGFloat(dim * size / totalSize)
    }
}

struct Stressor_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
           /* StressorItem(stressor: Stressor(name: "health", colour: CIColor(color: UIColor.blue).stringRepresentation, comments: "", size:1))
            StressorItem(stressor: Stressor(name: "career", colour: CIColor(color: UIColor.red).stringRepresentation, comments: "", size:1))*/
        }.previewLayout(.fixed(width: 300, height: 30))
    }
}

