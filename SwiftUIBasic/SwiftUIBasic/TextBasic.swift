//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by Black_K on 2023/11/13.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing:20) {
            // Font 사이즈를 title, body, footnote 등 정하면 reponsive
            Text("Screen Time")
                .font(.title)
                .fontWeight(.semibold)
                .bold()
                .underline(true,color: .red)
                .italic()
                .strikethrough(true,color: .green)
            
            // 이 방법으로 하게 되면 text 크기를 지정할 수 있습니다. font 12, 40 단점 고정식
            
            Text("Face Time".uppercased())
                .font(.system(size: 25,weight: .semibold,design: .serif))
            
            // multiline text alignment
            
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.leading)
                .foregroundColor(.red)
            
        }
    }
}

#Preview {
    TextBasic()
}
