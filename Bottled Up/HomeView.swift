//
//  BottleView.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 26/11/2020.
//

import SwiftUI
import Combine

struct AppTitle: View {
    var body: some View {
        Text("bottled up")
            .font(.title)
            .fontWeight(.thin)
            .offset(x:0, y:40)
    }
}

struct DropletButton: View {
    @EnvironmentObject var stressorList: BottledStressors
    
    var body: some View {
        Image(systemName: "drop.fill")
            .scaleEffect(3)
            .background(Color(UIColor.systemBackground))
            .overlay(
                Button(action: { addStressor() }) {
                    Text("+").font(.title)}
                    .foregroundColor(.white)
                    .offset(x: -1.5, y: 3)
            )
            .offset(x: 0, y: 60)
            .frame(width: 500, height: 40, alignment: .center)
            .foregroundColor(.blue)
    }
    
    func addStressor() {
        self.stressorList.addingStressor.toggle()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack {
            AppTitle()
            DropletButton()
        }
        .background(Color(UIColor.systemBackground))
        .zIndex(1.0)
        .offset(x:0,y: -100)
    }
}

struct BottleView: View {
    @EnvironmentObject var stressorList: BottledStressors
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                ForEach(stressorList.stressors) {stressor in
                    NavigationLink(destination: DetailStressor(stressor: stressor)) {
                            StressorItem(stressor: stressor)
                    }
                }
            }
                .padding()
                .frame(maxWidth: 300, maxHeight: 400)
            BottleImg()
                .scaleEffect(1.2)
                .allowsHitTesting(false)
        }
        .offset(x:0, y: -30)
    }
}

struct HomeView: View {
    @EnvironmentObject var stressorList: BottledStressors
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                BottleView()
            }
            .sheet(isPresented: $stressorList.addingStressor) {
                AddingStressor()
            }
            .background(Color(.white))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(BottledStressors())
    }
}
