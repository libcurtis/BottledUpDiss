//
//  Config.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 05/01/2021.
//

import Foundation

enum Config {
    static let appGroupIdentifier = "group.example.Bottled-Up"

    static var widgetFilename: URL? {
        FileManager.default.containerURL(forSecurityApplicationGroupIdentifier:
Self.appGroupIdentifier)?.appendingPathComponent("widget.json")
    }
}
