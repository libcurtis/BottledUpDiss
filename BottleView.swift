//
//  BottleView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 05/01/2021.
//

import SwiftUI

struct BottleView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Stressor.entity(), sortDescriptors: [])  var stressors: FetchedResults<Stressor>
    @EnvironmentObject var envObj: BottleViewState
    
    let height: CGFloat
    let width: CGFloat
    
    
    var body: some View {
            ZStack(alignment: .bottom) {
                VStack {
                    ForEach(stressors) {stressor in
                        NavigationLink(destination: DetailStressor(stressor: stressor)) {
                            StressorItem(
                                name: stressor.name ?? "Unknown",
                                colour: stressor.colour ?? "0.5 0.7 0.3 1.0",
                                size: Int(stressor.size),
                                totalSize: stressors.map({ Int($0.size) }).reduce(0, +),
                                height: height,
                                width: width
                            )
                        }
                    }
                    .offset(x: 0, y: 10)
                }
                .scaleEffect(0.96)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                BottleImg()
                    .scaleEffect(1.2)
                    .allowsHitTesting(false)
            }
            .offset(x:0, y: -30)
        
    }
}

struct BottleView_Previews: PreviewProvider {
    static var previews: some View {
        
            GeometryReader{ metrics in
                BottleView(height: metrics.size.height, width: metrics.size.width)
            }
    }
}
