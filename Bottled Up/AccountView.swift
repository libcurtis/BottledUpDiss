//
//  AccountView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 26/11/2020.
//

import SwiftUI

struct AccActions: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20){
        HStack {
            Image(systemName: "person.fill").scaleEffect(2).multilineTextAlignment(.leading)
            Text("user settings")
                .font(.headline)
                .fontWeight(.thin)
                .padding()
        }
        
        HStack {
            Image(systemName: "lock.fill").scaleEffect(2).multilineTextAlignment(.leading)
            Text("adjust passcode")
                .font(.headline)
                .fontWeight(.thin)
                .padding()
        }
        
        
        HStack {
            Image(systemName: "moon.fill").scaleEffect(2).multilineTextAlignment(.leading)
            Text("switch mode")
                .font(.headline)
                .fontWeight(.thin)
                .padding()
        }
        }
        .offset(x:0, y:80)
    }
}

struct AccountView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            AppTitle()
            AccActions()
            HStack{
                BottleView().scaleEffect(0.5)
                    .offset(x:0, y:40)
            }
        }
        .offset(x:0,y: 40)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
