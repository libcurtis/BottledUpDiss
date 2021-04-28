//
//  IdentifyPatterns.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 15/02/2021.
//

import SwiftUI

struct IdentifyPatterns: View {
    @EnvironmentObject var envObj: BottleViewState
    @ObservedObject var stressor: Stressor
    @ObservedObject var textFieldManager = TextFieldManager()
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        VStack {
            HStack{
                Text("identify patterns:")
                    .font(.title)
                Text(stressor.name ?? "")
                    .font(.title)
                    .foregroundColor(Color(UIColor(ciColor: CIColor(string: stressor.colour ?? "0.5 0.7 0.3 1.0"))))
            }
            
            Text("Here's what you most recently wrote...")
                .font(.subheadline)
                .padding(.top)
            
            Text(stressor.sComments)
                .font(.headline)
                .foregroundColor(Color(UIColor(ciColor: CIColor(string: stressor.colour ?? "0.5 0.7 0.3 1.0"))))
            
            PatternList()
        }
    }
}
