//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/11/15.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing:20) {
            
            // Linear Gradient 선형 그라디언트
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.red,.blue]), 
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
            
            // Radial Gradient 선형 그라디언트
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(gradient:Gradient(colors:[.yellow, .purple]),
                                   center: .leading,
                                   startRadius: 5,
                                   endRadius: 300)
                )
                .frame(width: 300, height: 200)
            
            // Angular Gradient 선형 그라디언트
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(gradient: Gradient(colors: [.blue, .green]),
                                    center: .topLeading,
                                    angle: .degrees(180 + 45))
                )
                .frame(width: 300, height: 200)
            
        }
    }
}

#Preview {
    GradientBasic()
}
