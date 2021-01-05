//
//  WidgetView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/12/2020.
//

import SwiftUI

struct WidgetView: View {
   @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Stressor.entity(), sortDescriptors: [])  var stressors: FetchedResults<Stressor>
    @EnvironmentObject var envObj: EnvObject
        
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                ForEach(stressors) {stressor in
                    NavigationLink(destination: DetailStressor(stressor: stressor)) {
                        StressorItem(stressor: stressor)
                    }
                }
            }
            .padding()
            .frame(maxWidth: 300, maxHeight: 400)
            
            BottleImg()
                .scaleEffect(1.2)
                .allowsHitTesting(false)
        }
    }
}

struct WidgetView_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView()
    }
}
