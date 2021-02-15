//
//  WidgetItem.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 05/01/2021.
//

import Foundation

struct WidgetItem: Codable, Identifiable {
    var id: UUID { UUID() }
    let name: String
    let colour: String
    let size: Int
}
