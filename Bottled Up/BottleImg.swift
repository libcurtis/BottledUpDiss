//
//  BottleImg.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/10/2020.
//

import SwiftUI

struct BottleImg: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        Image(colorScheme == .light ? "bottle2" : "blackbottle").resizable().aspectRatio(contentMode: .fit)
    }
}

#if DEBUG
struct BottleImg_Previews: PreviewProvider {
    static var previews: some View {
        BottleImg()
            .environment(\.colorScheme, .light)
    }
}
#endif
