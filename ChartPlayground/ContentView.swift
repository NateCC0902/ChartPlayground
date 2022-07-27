//
//  ContentView.swift
//  ChartPlayground
//
//  Created by Cc C on 2022/7/25.
//

import SwiftUI

extension Animation {
    static func ripple(_ index: Int) -> Animation {
        return Animation.spring(dampingFraction: 0.25)
            .speed(2)
            .delay(0.03 * Double(index))
        
            
    }
}


struct ContentView: View {
    let a = [-30,-99,-32,10,22.828,12,32,100,332,99,88,109,33,77,0,1,32,99,200]  
    //let a = [20,77]

    
    var body: some View {
        ///------------------------------------------------
        ZStack{
            HStack{
//                ForEach(a, id:\.self){ num in
//                        BarUnitView(value: num, width: 10, frameMaxWidth: 6,frameMaxHeight: 100)
//
//                            //.animation(.ripple(a.count-1 ))
//                            //.offset(y: 10)
//                    }
                
                ForEach(0 ..< a.count, id:\.self){ i in
                    BarUnitView(value: CGFloat(a[i]), width: 10, frameMaxWidth: 6,frameMaxHeight: 100)
                        .animation(.ripple(i))

                    
                }
 




            }
            .foregroundStyle(
            .linearGradient(
                colors: [.purple, .red],
                startPoint: .top,
                endPoint: .bottom
                ))
            
            AxisShape().stroke(style: StrokeStyle(lineWidth: 0.3, dash: [8])).padding()
        }

        ///------------------------------------------------
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
