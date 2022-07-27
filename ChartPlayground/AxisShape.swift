//
//  AxisShape.swift
//  ChartPlayground
//
//  Created by Cc C on 2022/7/25.
//

import SwiftUI

struct AxisShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let points = [
            CGPoint(x: 0, y: 0),
            CGPoint(x: 0, y: rect.midY),
            CGPoint(x: rect.maxX, y: rect.midY)
        ]
        path.addLines(points)
        
        
        return path
    }
    
   
}

struct AxisShape_Previews: PreviewProvider {
    static var previews: some View {
        AxisShape()
    }
}
