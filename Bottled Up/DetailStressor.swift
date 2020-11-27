//
//  DetailStressor.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 21/11/2020.
//

import SwiftUI

struct DetailStressor: View {
    @EnvironmentObject var stressorList: BottledStressors
    @ObservedObject var stressor: Stressor
    @ObservedObject var textFieldManager = TextFieldManager()
    
    var body: some View {
        VStack {
            VStack(spacing:30) {
                Text(stressor.name)
                    .font(.title)
                    .foregroundColor(Color(UIColor(ciColor: CIColor(string: stressor.colour))))
                    .padding()
                HStack {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .overlay(Text("Identify").font(.headline).foregroundColor(.white))
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.green)
                        .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .overlay(Text("Reframe").font(.headline).foregroundColor(.white))
                }
                .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text(stressor.comments)
            }.padding(50)
            
            HStack {
                HStack {
                    Circle()
                        .if(stressor.size == 1) {$0.glow().foregroundColor(.white) }
                        .if(stressor.size != 1) {$0.foregroundColor(.gray) }
                        .onTapGesture {
                            setSize(size: 1)
                        }
                        .frame(width: 20, height: 20)
                        .padding()
                    
                    Circle()
                        .if(stressor.size == 2) {$0.glow().foregroundColor(.white) }
                        .if(stressor.size != 2) {$0.foregroundColor(.gray) }
                        .onTapGesture {
                            setSize(size: 2)
                        }
                        .frame(width: 40, height: 30)
                        .foregroundColor(.purple)
                        .padding()
                    
                    Circle()
                        .if(stressor.size == 3) {$0.glow().foregroundColor(.white) }
                        .if(stressor.size != 3) {$0.foregroundColor(.gray) }
                        .onTapGesture {
                            setSize(size: 3)
                        }
                        .frame(width: 60, height: 40)
                        .foregroundColor(.purple)
                        .padding()
                }
                .padding()
                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: 0)
                
               
            }.frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            HStack(spacing:20){
                ColorBlock(color: .red)
                    .if(stressor.colour == CIColor(color: UIColor(Color.red)).stringRepresentation) {$0.glow(color: .yellow)}
                    .onTapGesture {
                        setColour(colour: CIColor(color: UIColor(Color.red)).stringRepresentation)
                    }
                ColorBlock(color: .orange)
                    .if(stressor.colour == CIColor(color: UIColor(Color.orange)).stringRepresentation) {$0.glow()}
                    .onTapGesture {
                        setColour(colour: CIColor(color: UIColor(Color.orange)).stringRepresentation)
                    }
                ColorBlock(color: .green)
                    .if(stressor.colour == CIColor(color: UIColor(Color.green)).stringRepresentation) {$0.glow()}
                    .onTapGesture {
                        setColour(colour: CIColor(color: UIColor(Color.green)).stringRepresentation)
                    }
                ColorBlock(color: .blue)
                    .if(stressor.colour == CIColor(color: UIColor(Color.blue)).stringRepresentation) {$0.glow()}
                    .onTapGesture {
                        setColour(colour: CIColor(color: UIColor(Color.blue)).stringRepresentation)
                    }
                ColorBlock(color: .pink)
                    .if(stressor.colour == CIColor(color: UIColor(Color.pink)).stringRepresentation) {$0.glow()}
                    .onTapGesture {
                        setColour(colour: CIColor(color: UIColor(Color.pink)).stringRepresentation)
                    }
                ColorBlock(color: .purple)
                    .if(stressor.colour == CIColor(color: UIColor(Color.purple)).stringRepresentation) {$0.glow()}
                    .onTapGesture {
                        setColour(colour: CIColor(color: UIColor(Color.purple)).stringRepresentation)
                    }
                ColorBlock(color: .gray)
                    .if(stressor.colour == CIColor(color: UIColor(Color.gray)).stringRepresentation) {$0.glow()}
                    .onTapGesture {
                        setColour(colour: CIColor(color: UIColor(Color.gray)).stringRepresentation)
                    }
            }.padding()
        }
    }
    
    func setSize(size: Int) {
        self.stressor.size = size
        stressorList.objectWillChange.send()
    }
    
    
    func setColour(colour: String) {
        self.stressor.colour = colour
        self.stressorList.objectWillChange.send()
    }
}

struct DetailStressor_Previews: PreviewProvider {
    static var previews: some View {
        DetailStressor(
            stressor: Stressor(
                name: "Health",
                colour: CIColor(color: UIColor.red).stringRepresentation,
                comments: "Worrying about my health...",
                size:3
            )
        )
    }
}
