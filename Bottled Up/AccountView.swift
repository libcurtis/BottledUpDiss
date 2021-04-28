//
//  AccountView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 26/11/2020.
//

import SwiftUI

struct AccActions: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack {
                Image(systemName: "person.fill").scaleEffect(1.5).multilineTextAlignment(.leading)
                Text("user settings")
                    .font(.title)
                    .fontWeight(.thin)
                    .padding()
                    .foregroundColor(.purple)
            }
        
            HStack {
                Image(systemName: "lock.fill").scaleEffect(1.5).multilineTextAlignment(.leading)
                Text("adjust passcode")
                    .font(.title)
                    .fontWeight(.thin)
                    .padding()
                    .foregroundColor(.purple)
            }
        
            HStack {
                Image(systemName: "moon.fill").scaleEffect(1.5).multilineTextAlignment(.leading)
                Text("switch mode")
                    .font(.title)
                    .fontWeight(.thin)
                    .padding()
                    .foregroundColor(.purple)
            }
            
            HStack {
                Image(systemName: "rosette").scaleEffect(1.5).multilineTextAlignment(.leading)
                NavigationLink(
                    destination: ProgressView()
                   ){
                    Text("achievements")
                        .font(.title)
                        .fontWeight(.thin)
                        .padding()
                        .foregroundColor(.purple)
                }
            }
        }
    }
}

struct AccountView: View {
    var body: some View {
    NavigationView{
            VStack(spacing: 100){
                AccActions()
                VStack{
                    BottleView(
                        height: 180,
                        width: 130
                    )
                }.frame(height:200).offset(y:-50)
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
