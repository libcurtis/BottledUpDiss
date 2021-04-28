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
    let height: CGFloat
    let width: CGFloat
    
    var body: some View {
            VStack{
                Text(name)
                    .textCase(.lowercase)
            }
            .frame(maxWidth: width,
                   minHeight: self.getHeight())
            .background(Color(UIColor(ciColor: CIColor(string: colour))))
            .foregroundColor(.white)
        
    }
    
    func getHeight() -> CGFloat {
        return CGFloat(Int(height) * size / totalSize)
    }
}

struct Stressor_Previews: PreviewProvider {
    
    static var previews: some View {
        GeometryReader{ metrics in
        VStack {
            StressorItem(
                name: "health",
                colour: CIColor(color: UIColor.blue).stringRepresentation,
                size:1,
                totalSize: 3,
                height: metrics.size.height,
                width: metrics.size.width)
            StressorItem(
                name: "career",
                colour: CIColor(color: UIColor.red).stringRepresentation,
                size:2,
                totalSize: 3,
                height: metrics.size.height,
                width: metrics.size.width)
        }.frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
    }
}

