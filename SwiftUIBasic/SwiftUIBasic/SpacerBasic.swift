//
//  SpacerBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/11/16.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        
        // 1번 - Spacer 예시 도형
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
        }
        .background(.yellow)
        
        // 2번 - App 상단 설정 닫기 아이콘 만들기
        VStack {
            HStack(spacing:0) {
                Image(systemName: "xmark")
                
                Spacer()
//                    .frame(height: 1)
//                    .background(.red)
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    SpacerBasic()
}
