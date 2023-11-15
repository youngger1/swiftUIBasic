//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 김상우 on 2023/11/13.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // circle 원형
            Text("원형")
                .font(.title)
            Circle()
//                .fill(.blue)
//                .foregroundColor(.pink)
//                .stroke(.red, lineWidth: 20)
//                .stroke(.purple, style: StrokeStyle(lineWidth: 30,lineCap: .butt, dash: [30]))
                .trim(from: 0.2, to: 1.0)
                .stroke(.purple, lineWidth: 50)
                .frame(width: 200,height: 100)
                .padding()
            
            // Ellipse 타원형
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(.green)
                .frame(width: 200, height: 100,alignment: .center)
            
            // 캡슐형
            Text("캡슐형")
                .font(.title)
            Capsule(style: .circular)
                .stroke(.blue, lineWidth: 30)
                .frame(width: 200, height: 100, alignment: .center)
        }
        
        VStack(spacing:20) {
            
            // 직사각형
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(.red)
                .frame(width: 200,height: 100,alignment: .center)
            
            // 둥근직사각형
            Text("둥근직사각형")
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4,to: 1.0)
                .frame(width: 300,height: 200,alignment: .center)
            
        }
    }
}

#Preview {
    ShapeBasic()
}
