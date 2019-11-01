//
//  BaseComponents.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation
import SwiftUI

/// CustomCellOne
struct CustomCellOne : View {
    var number : Int
    var body : some View{
        VStack(alignment: .center) {
            HStack{
                Rectangle()
                    .foregroundColor(.red)
                    .background(Color.white)
                    .cornerRadius(3)
                    .frame(width:100)
                    Text("Persona- \(number)")
            }
            Image(systemName: "p.circle.fill")
                .font(.largeTitle)
                .background(Color.yellow)
        }
    }
}

/// CustomCellTwo
struct CustomCellTwo : View {    
    var user: PeopleModelElement
    init(user: PeopleModelElement) {
        self.user = user
    }
    var body: some View {
        return GeometryReader { geometry in
            VStack() {
                Spacer()
                Text("\(self.user.name ?? "") \(self.user.email ?? "")")
                Text("\(self.user.city ?? "")")
                Divider().padding(.vertical, 12)
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}
