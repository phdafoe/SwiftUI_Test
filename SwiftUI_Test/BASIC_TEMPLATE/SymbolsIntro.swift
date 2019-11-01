//
//  SymbolsIntro.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 03/10/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation
import SwiftUI

struct SymbolsIntro : View {
    var body: some View{
        VStack(spacing:20){
            Text("Images")
                .font(.largeTitle)
            
            Text("Usign SF Symbols")
                .foregroundColor(.gray)
            
            Text("You will see I use icons or symbols to add clarity to what I'm demonstrating. These come from Apple's new symbol fontlibrary which you can browse using an app called 'SF Symbols'.")
                .frame( maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .layoutPriority(1)
            
            Image(systemName: "hand.thumbsup.fill")
                .font(.largeTitle)
            
            Image("SF Symbols")
                .shadow(radius: 5)
                
        }.font(.title).edgesIgnoringSafeArea(.bottom)
    }
}

struct SymbolsIntro_Preview : PreviewProvider {
    static var previews : some View{
        SymbolsIntro()
    }
}
