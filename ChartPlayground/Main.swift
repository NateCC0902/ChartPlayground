//
//  Main.swift
//  ChartPlayground
//
//  Created by Cc C on 2022/7/25.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                    ContentView()
                } label: {
                    Text("LaLa的體重")
            }
        }


        
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
