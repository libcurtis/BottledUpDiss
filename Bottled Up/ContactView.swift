//
//  ContactView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 25/02/2021.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        VStack{
            Text("contact")
                .font(.largeTitle)
                .fontWeight(.thin)
                .padding()
                .foregroundColor(.purple)
            
                Text("complete the form below:")
                    .font(.title)
                    .fontWeight(.thin)
                    .padding()
                    .foregroundColor(.purple)
            
            Form(content: {
                Text("Comment...")
            })
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
