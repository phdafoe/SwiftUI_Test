//
//  GenericProvider.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//

import Foundation

protocol GenericProvider {
    func getPeopleProvider(success: @escaping(PeopleModel) -> Void, failure: @escaping(EError) -> Void)
}

class GenericProviderImplementation: BaseProvider, GenericProvider {
    
    func getPeopleProvider(success: @escaping(PeopleModel) -> Void, failure: @escaping(EError) -> Void) {
        request(entityClass: PeopleModel.self,
                endpoint: CONSTANTS.BASE_URL.PEOPLE_JSON,
                method: .get, success: { (entity) in
            success(entity)
        }) { (error) in
            failure(error)
        }
    }
}


