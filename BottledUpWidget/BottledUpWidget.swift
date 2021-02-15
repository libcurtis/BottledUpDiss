//
//  BottledUpWidget.swift
//  BottledUpWidget
//
//  Created by Liberty Curtis on 17/12/2020.
//

import WidgetKit
import SwiftUI
import Intents

struct ItemsEntry: TimelineEntry {
    let date: Date
    let items: [WidgetItem]
}

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> ItemsEntry {
        ItemsEntry(date: Date(), items: [WidgetItem]())
    }

    func getSnapshot(in context: Context, completion: @escaping
(ItemsEntry) -> ()) {
        let _ = "getting snapshot..."
        let entry = ItemsEntry(date: Date(), items: loadItems())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping
(Timeline<Entry>) -> ()) {
        let _ = print("GETTING TIMELINE!")
        let entry = ItemsEntry(date: Date(), items: loadItems())
        let timeline = Timeline(entries: [entry], policy: .never)
        completion(timeline)
    }

    func loadItems() -> [WidgetItem] {
        guard let url = Config.widgetFilename else { return [] }
        guard let data = try? Data(contentsOf: url) else { return [] }

        let _ = "loading items..."
        return (try? JSONDecoder().decode([WidgetItem].self, from: data)) ?? []
    }
}

@main
struct BottledUpWidget: Widget {
    let kind: String = "BottledUpWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WidgetView(entry: entry)
        }
        .configurationDisplayName("Bottled Up")
        .description("Your current stressors.")
    }
}

struct BottledUpWidget_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView(entry: ItemsEntry(date: Date(), items: []))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
