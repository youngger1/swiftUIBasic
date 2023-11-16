//
//  FrameBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/11/16.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // 1
            Text("Hello, World!")
                .font(.title)
                .background(.green)
                .frame(width: 200, height: 200,alignment: .center)
                .background(.red)
            
            Divider()
            
            // 2
            Text("Hello, World!")
                .font(.title)
                .background(.green)
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity,
                       alignment: .center)
                .background(.red)
            
        }
        
        //3
        VStack(spacing: 20) {
           Text("Hellow World!")
                .font(.title)
                .background(.red)
                .frame(height: 100,alignment: .top)
                .background(.orange)
                .frame(width: 200)
                .background(.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.pink)
                .frame(height: 400)
                .background(.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(.yellow)
        }
    }
}

#Preview {
    FrameBasic()
}
