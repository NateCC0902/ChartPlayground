//
//  BarUnitView.swift
//  ChartPlayground
//
//  Created by Cc C on 2022/7/26.
//

import SwiftUI

struct BarUnitView: View {
    var value: CGFloat
    var width: CGFloat
    var frameMaxWidth: CGFloat
    var frameMaxHeight: CGFloat
    @State private var barShapeChanged = false

    var body: some View {
        ZStack{
            BarShape(value: value, width: width)
                .frame(width: frameMaxWidth,height: frameMaxHeight)
            
                .scaleEffect(barShapeChanged ? 1.3: 1.0)
                .contentShape(BarShape(value: value * 1.3, width: width))
                .onTapGesture {
                    //print("\(value)")

                    withAnimation(.easeInOut) {
                        self.barShapeChanged.toggle()

                    }
                }

        }
    }
}

struct BarUnitView_Previews: PreviewProvider {
    static var previews: some View {
        BarUnitView(value: 100, width: 10, frameMaxWidth: 100, frameMaxHeight: 10)
    }
}
