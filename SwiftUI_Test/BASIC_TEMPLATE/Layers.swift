//
//  Layers.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 06/10/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import SwiftUI

struct Layers: View {
    var body: some View {
        VStack(spacing:20){
            Text("Layers")
                .font(.largeTitle)
            
            Text("The basics")
                .foregroundColor(Color.gray)
            
            Text("With SwiftViews, you can add layers on top (.overlay) and behind (.background) the view")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .layoutPriority(1)
            
            Image("Yosemite")
                .opacity(0.7)
                .background(Color.red.opacity(0.3))
                .background(Color.blue.opacity(0.4))
                .background(Color.red.opacity(0.5))
                .overlay(Text("Yosemite"))
            
            Image("Layers")
            
        }.font(.largeTitle)
    }
}

struct Layers_Previews: PreviewProvider {
    static var previews: some View {
        Layers()
    }
}
