//
//  AppTitle.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 05/01/2021.
//

import SwiftUI

struct AppTitle: View {
    var body: some View {
        Text("bottled up")
            .font(.title)
            .fontWeight(.thin)
            .offset(x:0, y:40)
    }
}

struct AppTitle_Previews: PreviewProvider {
    static var previews: some View {
        AppTitle()
    }
}
