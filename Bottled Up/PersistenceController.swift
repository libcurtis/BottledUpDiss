//
//  PersistenceController.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 05/01/2021.
//

import CoreData
import WidgetKit

struct PersistenceController {
    static let shared = PersistenceController()

    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "DataModel")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
    
    func save() {
        try? container.viewContext.save()
        try? writeWidgetData()
    }
    
    func writeWidgetData() throws {
        let request: NSFetchRequest<Stressor> = NSFetchRequest(entityName: "Stressor")

        guard let widgetFilename = Config.widgetFilename else { return }
        let items = try container.viewContext.fetch(request)

        let widgetItems = items.map { item in
            WidgetItem(name: item.name ?? "Unknown",
                       colour: item.colour ?? "0.5 0.7 0.3 1.0",
                       size: Int(item.size)
            )
        }

        let data = try JSONEncoder().encode(widgetItems)
        try data.write(to: widgetFilename)
        
        WidgetCenter.shared.reloadTimelines(ofKind: "group.example.Bottled-Up")
    }
}
