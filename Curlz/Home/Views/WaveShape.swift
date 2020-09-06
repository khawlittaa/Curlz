//
//  WaveShape.swift
//  Curlz
//
//  Created by khaoula hafsia on 9/6/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct Wave: Shape {
    var yOffset: CGFloat = 0.5
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX * 0.75, y: rect.maxY - (rect.maxY * yOffset)),
                      control2: CGPoint(x: rect.maxX * 0.25, y: rect.maxY + (rect.maxY * yOffset)))
        
        path.closeSubpath()
        
        return path
    }
    
  
}

struct WaveShape_Previews: PreviewProvider {
    static var previews: some View {
        Wave(yOffset: 0.4)
            .stroke(Color.purple, lineWidth: 2)
            .frame(height: 200)
        .padding()
    }
}
