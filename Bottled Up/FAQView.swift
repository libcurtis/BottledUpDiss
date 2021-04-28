//
//  FAQView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 25/02/2021.
//

import SwiftUI

struct FAQView: View {
    var body: some View {
        VStack {
            Text("enter passcode:")
                .font(.largeTitle)
                .fontWeight(.thin)
                .padding()
                .foregroundColor(.purple)
            
            HStack{
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 50, height: 50)
                    .padding()
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 50, height: 50)
                    .padding()
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 50, height: 50)
                    .padding()
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 50, height: 50)
                    .padding()
            }
                
        }
    }
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView()
    }
}
