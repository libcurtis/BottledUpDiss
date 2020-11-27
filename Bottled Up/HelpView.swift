//
//  HelpView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 26/11/2020.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Text("bottled up")
                .font(.title)
                .fontWeight(.thin)
                .padding()
            
            Text("welcome!").font(.headline).fontWeight(.thin)
                .padding()
            
            Text("fill up your personal jar with whatever is stressing you out by clicking on the water droplet on the home screen.").font(.headline).fontWeight(.thin).multilineTextAlignment(.center).padding()
            
            Text("work on  these stressors by clicking on them in the jar. try to identify any thought patterns you may be experiencing.").font(.headline).fontWeight(.thin).multilineTextAlignment(.center).padding()
            
            
            Text("if you are worried you or someone else may be at risk, visit the NHS website for information on how to get help.").font(.headline).fontWeight(.thin).multilineTextAlignment(.center).padding()
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
