//
//  ExtactViewBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/12/06.
//

import SwiftUI

struct ExtactViewBasic: View {
    
    //property
    @State var backgroundColor : Color = .pink
    
    
    var body: some View {
        
        ZStack {
            // background
            backgroundColor.ignoresSafeArea()
            
            // content
//            VStack {
//                
//                Text("Extract View 연습")
//                    .font(.largeTitle)
//                
//                Button(action: {
//                    backgroundColor = .yellow
//                }, label: {
//                    Text("바탕색 변경")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(.black)
//                        .cornerRadius(10)
//                })
//                
//            }
            contentLayer
        }
        
    }
    
    
    // Content
    var contentLayer: some View {
        
        VStack {
            
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            })
            
        }
        
    }
    
    //Function
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
    
}

#Preview {
    ExtactViewBasic()
}
