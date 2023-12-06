//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/12/06.
//

import SwiftUI

struct StateBasic: View {
    
    // property
    
    @State var backgroundColor : Color  = .green
    @State var myTitle = "아직 버튼 안눌림"
    @State var count = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing: 20, content: {
                Text(myTitle)
                    .font(.title)
                Text("카운트 : \(count)")
                
                HStack(spacing: 20, content: {
                    Button(action: {
                        // action
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        count += 1
                    }, label: {
                        Text("1번 버튼")
                    })
                    
                    Button(action: {
                        // action
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    }, label: {
                        Text("2번 버튼")
                    })
                    
                })
                
            })
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}
