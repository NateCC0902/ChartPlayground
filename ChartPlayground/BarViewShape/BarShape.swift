//
//  BarShape.swift
//  ChartPlayground
//
//  Created by Cc C on 2022/7/25.
//

import SwiftUI

struct BarShape: Shape {
    var value:CGFloat
    var width:CGFloat = 25

    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        if(value > -5 && value < 5){
                if(value == 0){
                    return myCircle(in: rect, heig: 2)
                }
            return myCircle(in: rect, heig: 5)

        }
                
//        path.UIBezierPath(roundedRect: CGRect(x: 10, y: 10, width: 80, height: 50), cornerRadius: 5)
        path.addRoundedRect(in:
                                CGRect(x:rect.midX-CGFloat(width)/2,
                                       y: rect.midY,
                                       width: width,
                                       height: -value),
                            
                            cornerSize: CGSize(width:10, height:40),
                            style: .circular)
        

        return path
    }
    
    private func myCircle(in rect: CGRect, heig: CGFloat) -> Path{
        
        var path = Path()
                

        let petal = CGPath(ellipseIn: CGRect(x: rect.midX-CGFloat(width)/2,
                                             y: rect.midY,
                                             width: width,
                                             height: -heig),
                                                transform: .none)
        
        let p = Path(petal)
        
        path.addPath(p)
            
        return path

    }
    

}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        BarShape(value: 1, width: 5).background(.yellow)
            .padding()
        
    }
}
