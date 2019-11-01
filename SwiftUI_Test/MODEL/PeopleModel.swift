//
//  PeopleModel.swift
//  SwiftUI_Test
//
//  Created by Andres Felipe Ocampo Eljaiesk on 01/11/2019.
//  Copyright © 2019 icologic. All rights reserved.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let peopleModel = try? newJSONDecoder().decode(PeopleModel.self, from: jsonData)

import Foundation

// MARK: - PeopleModelElement
struct PeopleModelElement: Identifiable, Codable {
    let id = UUID()
    let name: String?
    let email, city: String?
    let mac, timestamp: String?
    let creditcard: String?
}

typealias PeopleModel = [PeopleModelElement]
