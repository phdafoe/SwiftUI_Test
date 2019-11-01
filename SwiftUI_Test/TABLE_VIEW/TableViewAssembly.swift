//
//  TableViewAssembly.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation
import SwiftUI

final public class TableViewAssembly{
    //===============================
    //TableViewAssembly
    //===============================

    static func tableViewNavigationController() -> NavigationView<CustomTableView>{
        let navVC = NavigationView {
            tableViewController()
        }
        return navVC
    }
    
    static func tableViewController() -> CustomTableView{
        var vc = CustomTableView()
        vc.presenter = tableViewPresenter(viewController: vc) as! TableViewPresenterImplementation
        return vc
    }
    
    static fileprivate func tableViewPresenter(viewController : CustomTableView) -> TableViewPresenter{
        let presenter = TableViewPresenterImplementation()
        presenter.interactor = tableViewInteractor()
        return presenter
    }
    
    static fileprivate func tableViewWireframe(viewController : CustomTableView) -> TableViewWireframe{
        let wireframe = TableViewWireframeImplementation()
        return wireframe
    }
    
    static func tableViewInteractor () -> TableViewInteractor {
        let interactor = TableViewInteractorImplementation()
        return interactor
    }
    
    //===============================
    //TableViewAssembly
    //===============================
}
