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
            
            VStack (spacing:20){
                NavigationLink(destination: TutorialView()) {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.pink)
                        .frame(maxHeight: 100)
                        .overlay(Text("about").font(.headline).foregroundColor(.white))
                }
                
                NavigationLink(destination: Text("")) {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.purple)
                        .frame(maxHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .overlay(Text("NHS link").font(.headline).foregroundColor(.white))
                }
                
                NavigationLink(destination: FAQView()) {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.pink)
                        .frame(maxHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .overlay(Text("faqs").font(.headline).foregroundColor(.white))
                }
                
                NavigationLink(destination: ContactView()) {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.purple)
                        .frame(maxHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .overlay(Text("contact").font(.headline).foregroundColor(.white))
                }
            }.frame(width:350)
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
