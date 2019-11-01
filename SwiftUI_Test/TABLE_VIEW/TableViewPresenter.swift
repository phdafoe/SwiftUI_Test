//
//  TableViewPresenter.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation

protocol TableViewPresenter: class {
    //
}


class TableViewPresenterImplementation : Presenter<CustomTableView, TableViewWireframe, TableViewInteractor>, TableViewPresenter, ObservableObject{
    
    @Published var users: [PeopleModelElement] = []
    
    internal func getDataFromWeb(){
        users.removeAll()
        self.interactor?.getPeopleInteractor(success: { (peopleEntity) in
            self.users = peopleEntity
        }, failure: { (error) in
            print(error._localizedDescription)
        })
    }
    
    
}
