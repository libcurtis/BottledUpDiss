//
//  TutorialView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 25/02/2021.
//

import SwiftUI

struct TutorialView: View {
    var body: some View {
        VStack(spacing:30){
            Text("welcome!")
                .font(.largeTitle)
                .fontWeight(.thin)
                .padding()
                .foregroundColor(.purple)
            Text("fill up your personal jar with whatever is stressing you out by clicking on the water droplet on the home screen.").font(.headline).fontWeight(.thin).multilineTextAlignment(.center).padding()
            
            Text("work on  these stressors by clicking on them in the jar. try to identify any thought patterns you may be experiencing by taking a moment to reflect. try to reframe your thoughts by thinking about them from a different perspective.").font(.headline).fontWeight(.thin).multilineTextAlignment(.center).padding()
            
            
            Text("hopefully, with time, the things you add to your bottle won't be as stressful. you can remove them from the jar by clicking 'remove'.").font(.headline).fontWeight(.thin).multilineTextAlignment(.center).padding()
            
            RoundedRectangle(cornerRadius: 25).frame(maxHeight:170).foregroundColor(.gray).overlay( Text("click here for a guided tutorial").font(.largeTitle).fontWeight(.thin).multilineTextAlignment(.center).padding()
                .foregroundColor(.white)
            )
        }.frame(maxWidth:350,maxHeight:.infinity)
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
