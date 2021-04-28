//
//  ReframeStressor.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/12/2020.
//

import SwiftUI

struct ReframeStressor: View {
    @EnvironmentObject var envObj: BottleViewState
    @ObservedObject var stressor: Stressor
    @State private var reframed: String = ""
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        VStack {
            HStack{
                Text("reframe")
                    .font(.title)
                Text(stressor.name ?? "")
                    .font(.title)
                    .foregroundColor(Color(UIColor(ciColor: CIColor(string: stressor.colour ?? "0.5 0.7 0.3 1.0"))))
            }
            
            Text("\"\(stressor.sComments)\"")
                .font(.subheadline)
                .foregroundColor(Color(UIColor(ciColor: CIColor(string: stressor.colour ?? "0.5 0.7 0.3 1.0"))))
            
            Text("How else could you look at this?")
                .font(.subheadline)
                .padding(.top)
            
            TextField("I could...",
                      text: $reframed)
                .frame(width: 300, height: 100, alignment: .center)
                .multilineTextAlignment(.center)
            
            
            HStack{
                Button("Save") {
                    func save(comment: String) {
                        let updated = stressor
                        updated.stressorID = stressor.stressorID
                        updated.name = stressor.name
                        updated.comments = stressor.comments
                        updated.colour = stressor.colour
                        updated.size = stressor.size
                        updated.reframe = reframed
                        
                        PersistenceController.shared.save()
                    }
                }.padding()
            }
        }
    }
    
}
