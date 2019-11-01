//
//  Wireframe.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation
import UIKit

class Wireframe {
    
    internal weak var viewController: UIViewController?
    
    
    //MARK: LIFE CYCLE
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    //MARK: PRIVATE
    internal func show(_ vc: UIViewController){
        if let navigationController = viewController?.navigationController {
            navigationController.pushViewController(vc, animated: true)
        }
    }
    
    internal func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Swift.Void)? = nil) {
        if let navigationController = viewController?.navigationController {
            navigationController.present(viewControllerToPresent, animated: flag, completion: completion)
            return
        }
        viewController?.present(viewControllerToPresent, animated: flag, completion: completion)
    }
}
