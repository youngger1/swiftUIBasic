//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/12/06.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        ZStack{
            //backGround
            Color.blue
                .ignoresSafeArea()
            
            // Content
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
            }
        }
        
        // 2번화면
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay {
                            Text("\(index) 번 리스트")
                        }
                    
                }
            }
        }.background(
            Color.blue
                .ignoresSafeArea()
        )
    }
}

#Preview {
    IgnoreSafeAreaBasic()
}
