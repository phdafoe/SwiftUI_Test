//
//  AppAssembly.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

protocol AppAssemblyProtocol : class  {
    func applicationShowInitVC(_ window : UIWindow, scene: UIScene)
}

final class AppAssembly : AppAssemblyProtocol {
    
    private(set) var window: UIWindow?
    
    internal func applicationShowInitVC(_ window : UIWindow, scene: UIScene) {
        let actualViewController = TableViewAssembly.tableViewNavigationController()
        window.rootViewController = UIHostingController(rootView: actualViewController)
        self.window = window
        window.makeKeyAndVisible()
    }
    
    
    
}
