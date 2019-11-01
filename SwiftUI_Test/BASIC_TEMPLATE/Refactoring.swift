//
//  Refactoring.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 03/10/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation
import SwiftUI

struct Refactoring : View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Refactoring")
                .font(.largeTitle)
            
            Text("Reusing modifiers")
                .foregroundColor(Color.gray)
            
            Text("You can put common modifiers on the parent views to be applied to all the chield views")
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .layoutPriority(1)
            
        }.font(.title)
    }
}

struct Refactoring_Previews: PreviewProvider {
    static var previews: some View {
        Refactoring()
    }
}
