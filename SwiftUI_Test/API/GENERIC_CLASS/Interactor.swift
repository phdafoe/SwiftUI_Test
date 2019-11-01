//
//  Interactor.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation

class Interactor<T>{
    
    internal var presenter : T?
    
    convenience init(presenter : T){
        self.init()
        self.presenter = presenter
    }
    
}
