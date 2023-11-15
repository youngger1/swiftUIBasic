//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/11/15.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing:20) {
            
            // Basic color
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(.blue)
                .frame(width: 300, height: 100)
            
            // Primary Color
            // 자동으로 색 다크모드 지원
            
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(.secondary)
                .frame(width: 300, height: 100)
            
            // UIColor
            // UIKit에서 사용되는 color 값을 사용할 수 있습니다.
            Text("UIColor")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(.secondarySystemBackground))
                .frame(width: 300, height: 100)
            
            // custom Color
            Text("customColor")
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100)
            
        }
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(.dark)  // preview 다크모드 설정
}
