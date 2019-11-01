//
//  Presenter.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation

class Presenter <T, U, V> {
    
    internal var viewController: T?
    internal var wireframe: U?
    internal var interactor: V?
    
    convenience init (viewController: T, wireframe: U? = nil, interactor: V? = nil) {
        self.init()
        self.viewController = viewController
        self.wireframe = wireframe
        self.interactor = interactor
    }
    
}
