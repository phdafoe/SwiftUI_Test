//
//  TableViewInteractor.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation


protocol TableViewInteractor : class {
    func getPeopleInteractor(success: @escaping(PeopleModel) -> (), failure: @escaping(EError) -> ())
}

class TableViewInteractorImplementation: Interactor<TableViewPresenter>, TableViewInteractor, ObservableObject {
        
    var provider = GenericProviderImplementation()
    
    internal func getPeopleInteractor(success: @escaping(PeopleModel) -> (), failure: @escaping(EError) -> ()) {
        self.provider.getPeopleProvider(success: { (entity) in
            success(entity)
        }) { (error) in
            failure(error)
        }
    }
}
