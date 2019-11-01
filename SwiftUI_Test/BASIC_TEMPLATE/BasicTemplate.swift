//
//  ContentView.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 03/10/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import SwiftUI

struct BasicTemplate: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            
            Text("Subtitle")
                .font(.title)
                .foregroundColor(Color.gray)
            
            Text("Short description of what i am demostrating goes here")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .layoutPriority(1)
        }
    }
}

struct BasicTemplate_Previews: PreviewProvider {
    static var previews: some View {
        BasicTemplate()
    }
}
