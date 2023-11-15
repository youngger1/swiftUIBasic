//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/11/15.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing:20){
            Image(systemName: "person.fill.badge.plus")
                .resizable()
            // redermode 에서 original로 하게되면 실제 color에서 multi color 변경되게 됩니다.
            // 즉 고유 값 걸러로 변경되어서 color를 변경하더라고 변경되지 않는 컬러 값이 됩니다.
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    IconBasic()
}
