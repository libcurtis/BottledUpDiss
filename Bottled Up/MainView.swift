//
//  ContentView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/10/2020.
//

import SwiftUI

struct MainView: View {
    @State private var selection = 2
    
    var body: some View {
        TabView(selection:$selection) {
            AccountView().tabItem {
                    Image(systemName: "person.fill")
                Text("Account") }.tag(1)
           
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home") }.tag(2)
            
            HelpView().tabItem {
                Image(systemName: "questionmark.circle.fill")
                Text("Help") }.tag(3)
        }.accentColor(.purple)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environment(\.colorScheme, .light)
    }
}
