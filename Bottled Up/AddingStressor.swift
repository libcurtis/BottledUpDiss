//
//  AddingStressor.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 28/10/2020.
//

import SwiftUI

extension View {
    @ViewBuilder
    func `if`<Transform: View>(_ condition: Bool, transform: (Self) -> Transform) -> some View {
        if condition { transform(self) }
        else { self }
    }
    
    func glow(color: Color = .gray, radius: CGFloat = 5) -> some View {
            self
                .shadow(color: color, radius: radius)
                .shadow(color: color, radius: radius)
                .shadow(color: color, radius: radius)
        }
}

struct ColorBlock: View {
    var colorID = UUID()
    var color: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(self.color)
    }
}

struct Colors: View {
    var body: some View {
        HStack{
            ColorBlock(color: .orange)
                .onTapGesture {
                    
                }
            ColorBlock(color: .red)
            ColorBlock(color: .blue)
            ColorBlock(color: .green)
            ColorBlock(color: .gray)
            ColorBlock(color: .pink)
            ColorBlock(color: .purple)
        }
    }
}

struct AddingStressor: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) var moc
    @ObservedObject var textFieldManager = TextFieldManager()
    @State private var comments: String = ""
    @State private var size: Int16 = 2
    @State private var sColour: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .center) {
            VStack(spacing:30) {
                TextField("What is causing stress?", text: $textFieldManager.userInput)
                    .frame(width: 300, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                
                HStack {
                    Circle()
                        .if(size == 1) {$0.glow().foregroundColor(.white) }
                        .if(size != 1) {$0.foregroundColor(.gray) }
                        .onTapGesture {
                            setSize(size: 1)
                        }
                        .frame(width: 20, height: 20)
                        .padding()
                    
                    Circle()
                        .if(size == 2) {$0.glow().foregroundColor(.white) }
                        .if(size != 2) {$0.foregroundColor(.gray) }
                        .onTapGesture {
                            setSize(size: 2)
                        }
                        .frame(width: 40, height: 40)
                        .foregroundColor(.purple)
                        .padding()
                    
                    Circle()
                        .if(size == 3) {$0.glow().foregroundColor(.white) }
                        .if(size != 3) {$0.foregroundColor(.gray) }
                        .onTapGesture {
                            setSize(size: 3)
                        }
                        .frame(width: 60, height: 60)
                        .foregroundColor(.purple)
                        .padding()
                    
                }.frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                TextField("Any more details?", text: $comments)
                        .frame(width: 300, height: 50, alignment: .center)
                        .multilineTextAlignment(.center)
                
                HStack(spacing:20){
                    ColorBlock(color: .red)
                        .if(sColour == .red) {$0.glow(color: .yellow)}
                        .onTapGesture {
                            self.sColour = .red
                        }
                    ColorBlock(color: .orange)
                        .if(sColour == .orange) {$0.glow()}
                        .onTapGesture {
                            self.sColour = .orange
                        }
                    ColorBlock(color: .green)
                        .if(sColour == .green) {$0.glow()}
                        .onTapGesture {
                            self.sColour = .green
                        }
                    ColorBlock(color: .blue)
                        .if(sColour == .blue) {$0.glow()}
                        .onTapGesture {
                            self.sColour = .blue
                        }
                    ColorBlock(color: .pink)
                        .if(sColour == .pink) {$0.glow()}
                        .onTapGesture {
                            self.sColour = .pink
                        }
                    ColorBlock(color: .purple)
                        .if(sColour == .purple) {$0.glow()}
                        .onTapGesture {
                            self.sColour = .purple
                        }
                    ColorBlock(color: .gray)
                        .if(sColour == .gray) {$0.glow()}
                        .onTapGesture {
                            self.sColour = .gray
                        }
                }.padding()
            }.padding(100)
            
            Spacer()
            
            HStack{
                Button("Dismiss") {
                    self.presentationMode.wrappedValue.dismiss()
                }.padding()
                
                Button("Add") {
                    let colourAsString = CIColor(color: UIColor(sColour)).stringRepresentation
                    
                    let stressor = Stressor(context: self.moc)
                    stressor.stressorID = UUID()
                    stressor.name = self.textFieldManager.userInput
                    stressor.colour = colourAsString
                    stressor.comments = comments
                    stressor.size = size
                    
                    PersistenceController.shared.save()
                    
                    self.presentationMode.wrappedValue.dismiss()
                }.padding()
            }.offset(x:0, y:-100)
        }
    }
    
    func setSize(size: Int) {
        self.size = Int16(size)
    }
}

class TextFieldManager: ObservableObject {
    let characterLimit = 25
    
    @Published var userInput = "" {
            didSet {
                if userInput.count > characterLimit {
                    userInput = String(userInput.prefix(characterLimit))
                }
            }
        }
}

struct AddingStressor_Previews: PreviewProvider {
    static var previews: some View {
        AddingStressor()
    }
}
