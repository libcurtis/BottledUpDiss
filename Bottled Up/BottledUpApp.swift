//
//  BottledUpApp.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 05/01/2021.
//

import SwiftUI

@main
struct BottledUpApp: App {
    @StateObject var envObj = EnvObject()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(envObj)
        }
    }
}
