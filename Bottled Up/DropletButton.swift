//
//  DropletButton.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 05/01/2021.
//

import SwiftUI

struct DropletButton: View {
    @EnvironmentObject var envObj: BottleViewState
    
    var body: some View {
        Image(systemName: "drop.fill")
            .scaleEffect(3)
            .background(Color(UIColor.systemBackground))
            .overlay(
                Button(action: { addStressor() }) {
                    Text("+").font(.title)}
                    .foregroundColor(.white)
                    .offset(x: -1.5, y: 3)
            )
            .offset(x: 0, y: 60)
            .frame(width: 500, height: 40, alignment: .center)
            .foregroundColor(.purple)
    }
    
    func addStressor() {
        self.envObj.addingStressor.toggle()
    }
}

struct DropletButton_Previews: PreviewProvider {
    static var previews: some View {
        DropletButton()
    }
}
