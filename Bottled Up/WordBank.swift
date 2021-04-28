//
//  WordBank.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 05/04/2021.
//

import SwiftUI

struct WordBank: View {
    var body: some View {
        VStack{
            Text("emotion bank").font(.title).fontWeight(.light).padding()
        ScrollView() {
            VStack(spacing:20){
                HStack{
                Circle()
                    .foregroundColor(.green)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("anger").font(.headline).foregroundColor(.white))
            
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("grief").font(.headline).foregroundColor(.white))
                
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("frustration").font(.headline).foregroundColor(.white))
                
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("blame").font(.headline).foregroundColor(.white))
                }.frame(maxWidth: .infinity,minHeight: 100).padding()
        
        HStack{
            Circle()
                .foregroundColor(.green)
                .frame(maxWidth: 100, maxHeight: 100)
                .overlay(Text("guilt").font(.headline).foregroundColor(.white))
        
            Circle()
                .foregroundColor(.gray)
                .frame(maxWidth: 100, maxHeight: 100)
                .overlay(Text("sadness").font(.headline).foregroundColor(.white))
            
            Circle()
                .foregroundColor(.gray)
                .frame(maxWidth: 100, maxHeight: 100)
                .overlay(Text("fear").font(.headline).foregroundColor(.white))
        
            Circle()
                .foregroundColor(.gray)
                .frame(maxWidth: 100, maxHeight: 100)
                .overlay(Text("loneliness").font(.headline).foregroundColor(.white))
        }.frame(maxWidth: .infinity,minHeight: 100).padding()
            
        HStack{
            Circle()
                .foregroundColor(.gray)
                .frame(maxWidth: 100, maxHeight: 100)
                .overlay(Text("anxiety").font(.headline).foregroundColor(.white))
        
            Circle()
                .foregroundColor(.gray)
                .frame(maxWidth: 100, maxHeight: 100)
                .overlay(Text("content").font(.headline).foregroundColor(.white))
            
            Circle()
                .foregroundColor(.green)
                .frame(maxWidth: 100, maxHeight: 100)
                .overlay(Text("confusion").font(.headline).foregroundColor(.white))
        
            Circle()
                .foregroundColor(.gray)
                .frame(maxWidth: 100, maxHeight: 100)
                .overlay(Text("happiness").font(.headline).foregroundColor(.white))
        }.frame(maxWidth: .infinity,minHeight: 100).padding()

            
            HStack{
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("shame").font(.headline).foregroundColor(.white))
            
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("love").font(.headline).foregroundColor(.white))
                
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("excitement").font(.headline).foregroundColor(.white))
            
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("hatred").font(.headline).foregroundColor(.white))
            }.frame(maxWidth: .infinity,minHeight: 100).padding()
    
            
            HStack{
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("annoyance").font(.headline).foregroundColor(.white))
            
                Circle()
                    .foregroundColor(.green)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("shame").font(.headline).foregroundColor(.white))
                
                Circle()
                    .foregroundColor(.green)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("attachment").font(.headline).foregroundColor(.white))
            
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("affection").font(.headline).foregroundColor(.white))
            }.frame(maxWidth: .infinity,minHeight: 100).padding()
    
            
            HStack{
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("sorrow").font(.headline).foregroundColor(.white))
            
                Circle()
                    .foregroundColor(.green)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("emptiness").font(.headline).foregroundColor(.white))
                
                Circle()
                    .foregroundColor(.green)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("hope").font(.headline).foregroundColor(.white))
            
                Circle()
                    .foregroundColor(.green)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("defense").font(.headline).foregroundColor(.white))
            }.frame(maxWidth: .infinity,minHeight: 100).padding()
    
            
            HStack{
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("bliss").font(.headline).foregroundColor(.white))
            
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("peace").font(.headline).foregroundColor(.white))
                
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("somber").font(.headline).foregroundColor(.white))
            
                Circle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .overlay(Text("worry").font(.headline).foregroundColor(.white))
            }.frame(maxWidth: .infinity,minHeight: 100).padding()
            }
        }
        }
    }
}

struct WordBank_Previews: PreviewProvider {
    static var previews: some View {
        WordBank()
    }
}
