//
//  ForEachLoopBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/11/28.
//

import SwiftUI

struct ForEachLoopBasic: View {
    
    // 변수 생성
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        // 1번
        VStack{
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덴스 번호 : \(index)번")
                }
                
            }
            
            Divider()
            
            // 2번
            ForEach(data, id: \.self) { item in
                Text(item)
                
            }
        }
        
    }
}

#Preview {
    ForEachLoopBasic()
}
