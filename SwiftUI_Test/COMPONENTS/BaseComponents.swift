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
                Text("\(self.user.creditcard ?? "")")
                Divider().padding(.vertical, 12)
            }.frame(width: geometry.size.width,
                    height: geometry.size.height)
        }
    }
}

struct ActivityIndicator: UIViewRepresentable {

    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct LoadingView<Content>: View where Content: View {

    @Binding var isShowing: Bool
    var content: () -> Content

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                self.content()
                    .disabled(self.isShowing)
                    .blur(radius: self.isShowing ? 3 : 0)
                VStack {
                    Text("Loading...")
                    ActivityIndicator(isAnimating: .constant(true), style: .large)
                }
                .frame(width: geometry.size.width / 2,
                       height: geometry.size.height / 5)
                .background(Color.secondary.colorInvert())
                .foregroundColor(Color.primary)
                .cornerRadius(20)
                .opacity(self.isShowing ? 1 : 0)
            }
        }
    }

}
