//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/12/06.
//

import SwiftUI

struct BindingBasic: View {
    
    // property
    
    @State var backgroundColor : Color = .green
    @State var title = "Binding Basic View"
    
    var body: some View {
        
        //background
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack {
                Text(title)
                
                // button
                // parameter 로 @State의 값에 $ 붙여 줍니다.
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
        
       
        
    }
}

#Preview {
    BindingBasic()
}
