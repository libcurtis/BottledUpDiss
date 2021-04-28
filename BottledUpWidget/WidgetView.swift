//
//  WidgetView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/12/2020.
//

import SwiftUI

struct WidgetView: View {
    let entry: ItemsEntry
        
    var body: some View {
        GeometryReader{ metrics in
            ZStack(alignment: .bottom) {
                VStack {
                    ForEach(entry.items) {stressor in
                        StressorItem(
                            name: stressor.name,
                            colour: stressor.colour,
                            size: stressor.size,
                            totalSize: entry.items.map({ Int($0.size) }).reduce(0, +),
                            height: metrics.size.width,
                                     
                            width: metrics.size.width)
                    }
                }
                .padding()
                .frame(maxWidth: 300, maxHeight: 400)
                
                BottleImg()
                    .scaleEffect(x: 1.3, y: 1, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .allowsHitTesting(false)
            }
        }
    }
}

struct WidgetView_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView(entry: ItemsEntry(date: Date(), items: []))
    }
}
