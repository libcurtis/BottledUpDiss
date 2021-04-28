//
//  ProgressView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 24/02/2021.
//

import SwiftUI

struct Achievement: View {
    var title: String
    var imgName: String
    var desc: String
    var achieved: Bool
    
    var body: some View {
        let colour: Color = achieved ? Color.purple : Color.gray
        
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(colour)
            .frame(height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .overlay(
                HStack{
                    Image(systemName: imgName)
                        .foregroundColor(.white)
                        .scaleEffect(1.4)
                        .multilineTextAlignment(.leading)
                        .frame(alignment: .leading)
                        .padding(5)
                    Spacer()
                    
                    VStack(alignment: .leading, spacing:0) {
                        Text(title)
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                        Text(desc)
                            .foregroundColor(.white)
                            .font(.system(size: 10))
                    }
                    .frame(width:120, height:90, alignment: .leading)
                    
                }.padding()
            )
    }
}

struct ProgressView: View {
    @FetchRequest(entity: Stressor.entity(), sortDescriptors: [])  var stressors: FetchedResults<Stressor>
    
    var body: some View {
        VStack{
            HStack(spacing:5){
                Achievement(title: "getting started",
                            imgName: "drop.fill",
                            desc: """
you added 5 things to your bottle that were causing you stress
""",
                            achieved: true)
                
                Achievement(title: "progression",
                            imgName:
                                "circle.circle.fill",
                            desc: """
you turned 10 large stressors into medium stressors
""",
                            achieved: true)
            }.padding(.horizontal)
            
            HStack(spacing:5){
                Achievement(title: "journal entry",
                            imgName: "ellipsis.bubble.fill",
                            desc: """
you put your thoughts and feelings into words for 10 stressors
""",
                            achieved: true)
                
                Achievement(title: "perspective",
                            imgName: "arrow.left.arrow.right.circle.fill",
                            desc: """
you reframed your thoughts for 5 different stressors
""",
                            achieved: false)
                
            }.padding(.horizontal)
            
            HStack(spacing:5){
                Achievement(title: "magic spell",
                            imgName:
                                "wand.and.stars",
                            desc: """
you removed 3 stressors in just one week
""",
                            achieved: true)
                
                Achievement(title: "historian",
                            imgName:
                        "scroll.fill",
                            desc: """
you removed 10 stressors and put them into the past
""",
                            achieved: false)
            }.padding(.horizontal)
            
            HStack(spacing:5){
                    Achievement(title: "royalty",
                                imgName: "crown.fill",
                                desc: """
you put time into yourself and spent 30 minutes on the app
""",
                                achieved: false)
                    
                    Achievement(title: "puzzle solver",
                                imgName: "puzzlepiece.fill",
                                desc: """
you turned 5 large stressors into small stressors
""",
                                achieved: true)
            }.padding(.horizontal)
            
            HStack(spacing:5){
                Achievement(title: "goodbye",
                            imgName:
                                "figure.wave",
                            desc: """
you removed 20 stressors and waved them goodbye
""",
                            achieved: false)
                
                Achievement(title: "slow & steady",
                            imgName: "tortoise.fill",
                            desc: """
you removed a stressor that had been around for 1 month
""",
                            achieved: false)
            }.padding(.horizontal)
            
            HStack(spacing:5){
                Achievement(title: "identification",
                            imgName: "a.magnify",
                            desc: """
you identified 3 thought patterns that you were stuck in
""",
                            achieved: false)
                
                Achievement(title: "consistency",
                            imgName: "hand.thumbsup.fill",
                            desc: """
you used the app for 14 days in a row
""",
                            achieved: false)
            }.padding(.horizontal)
            
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
