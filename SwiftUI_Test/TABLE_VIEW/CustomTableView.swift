//
//  CustomTableView.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomTableView : View{
    
    @State private var animationState = false
    @ObservedObject var presenter = TableViewPresenterImplementation()
    
    init() {
        UITableView.appearance().separatorColor = .clear
    }
            
    var body: some View{
        
        VStack() {
            LoadingView(isShowing: .constant(false)) {
                List(self.presenter.users) { user in
                    CustomCellTwo(user: user).frame(height:100)
                }.navigationBarTitle(Text("Contacts"), displayMode: .large)
            }
            Button(action: {
                print("Fetching...")
                self.presenter.getDataFromWeb()
            }, label: {
                ZStack {
                    Rectangle()
                        .frame(width: 120, height: 40)
                        .foregroundColor(Color.blue)
                        .cornerRadius(10)
                    Text("Fetch").foregroundColor(Color.white)
                }
            }).scaleEffect(self.animationState ? 1 : 1.2)
                .animation(Animation.easeInOut(duration: 2).repeatForever()).onAppear {
                    self.animationState.toggle()
            }
        }

    }
}



