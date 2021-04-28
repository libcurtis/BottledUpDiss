//
//  HeaderView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 05/01/2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            AppTitle().offset(x:0,y:40)
            DropletButton()
        }
        .background(Color(UIColor.systemBackground))
        .zIndex(1.0)
        .offset(x:0,y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
