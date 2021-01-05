//
//  Stressor.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/10/2020.
//

import SwiftUI

struct StressorItem: View {
    @ObservedObject var stressor: Stressor
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Stressor.entity(), sortDescriptors: [])  var stressors: FetchedResults<Stressor>
    
    var body: some View {
        VStack{
            Text(stressor.name ?? "")
                .textCase(.lowercase)
        }
        .frame(maxWidth: .infinity,
               minHeight: self.getHeight())
        .background(Color(UIColor(ciColor: CIColor(string: stressor.colour ?? "0.5 0.7 0.3 1.0"))))
        .foregroundColor(.white)
    }
    
    func getHeight() -> CGFloat {
        let totalSizes = stressors.map({ $0.size }).reduce(0, +)
        
        if (totalSizes == 0){
            return CGFloat(380)
        }
        
        return CGFloat(380 * stressor.size/totalSizes)
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

