//
//  BottleView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 26/11/2020.
//

import SwiftUI
import Combine

struct HomeView: View {
    @EnvironmentObject var envObj: BottleViewState
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
            NavigationView {
                VStack {
                    HeaderView()
                    GeometryReader{ metrics in
                        BottleView(
                            height: metrics.size.height,
                            width: metrics.size.width
                        )
                    }
                }
                .sheet(isPresented: $envObj.addingStressor) {
                    AddingStressor().environment(\.managedObjectContext, self.moc)
                }
                .background(Color(.white))
            }
        
    }
}
