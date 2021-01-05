//
//  DetailStressor.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 21/11/2020.


import SwiftUI
import CoreData

struct DetailStressor: View {
    @EnvironmentObject var envObj: EnvObject
    @ObservedObject var stressor: Stressor
    @ObservedObject var textFieldManager = TextFieldManager()
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        VStack {
            VStack(spacing:30) {
                Text(stressor.name ?? "")
                    .font(.title)
                    .foregroundColor(Color(UIColor(ciColor: CIColor(string: stressor.colour ?? "0.5 0.7 0.3 1.0"))))
                
                HStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .overlay(Text("Identify").font(.headline).foregroundColor(.white))
                    
                    NavigationLink(destination: ReframeStressor(stressor: stressor)) {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.green)
                            .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            .overlay(Text("Reframe").font(.headline).foregroundColor(.white))
                    }
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.yellow)
                        .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .overlay(Text("Remove").font(.headline).foregroundColor(.white))
                        .onTapGesture {
                            moc.delete(stressor)
                            try? self.moc.save()
                        }
                }
                
                if (stressor.sComments.count > 0){
                    TextField(stressor.sComments, text: $stressor.sComments)
                    .frame(width: 300, height: 100, alignment: .center)
                    .multilineTextAlignment(.center)
                }
                else {
                    TextField("How are you feeling about this?", text: $stressor.sComments)
                        .frame(width: 300, height: 100, alignment: .center)
                        .multilineTextAlignment(.center)
                }
            }
            
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
                    .if(stressor.colour == CIColor(color: UIColor(Color.red)).stringRepresentation) {$0.glow()}
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
            }.padding(30)
        }
    }
    
    func setSize(size: Int16) {
        let updated = self.stressor
        updated.stressorID = self.stressor.stressorID
        updated.name = self.stressor.name
        updated.comments = self.stressor.comments
        updated.colour = self.stressor.colour
        updated.size = size
        
        try? self.moc.save()
    }
    
    func setColour(colour: String) {
        let updated = self.stressor
        updated.stressorID = self.stressor.stressorID
        updated.name = self.stressor.name
        updated.comments = self.stressor.comments
        updated.colour = colour
        updated.size = self.stressor.size
        
        try? self.moc.save()
    }
    
    func setComment(comment: String) {
        let updated = self.stressor
        updated.stressorID = self.stressor.stressorID
        updated.name = self.stressor.name
        updated.comments = comment
        updated.colour = self.stressor.colour
        updated.size = self.stressor.size
        
        try? self.moc.save()
    }
}

/*
struct DetailStressor_Previews: PreviewProvider {
    static let moc = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)

    static var previews: some View {
        let stressor = Stressor(context: moc)
        DetailStressor(stressor: stressor)
    }
}
*/
