//
//  ReframeStressor.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/12/2020.
//

import SwiftUI

struct ReframeStressor: View {
    @EnvironmentObject var envObj: EnvObject
    @ObservedObject var stressor: Stressor
    @ObservedObject var textFieldManager = TextFieldManager()
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        VStack {
            HStack{
                Text("Let's reframe...")
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
                      text: $stressor.sReframe)
                .frame(width: 300, height: 100, alignment: .center)
                .multilineTextAlignment(.center)
        }
    }
}
