//
//  PatternList.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 15/02/2021.
//

import SwiftUI

struct Pattern: Identifiable, Hashable {
    let name: String
    let desc: String
    let id = UUID()
}
struct MultipleSelectionRow: View {
    var p: Pattern
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                VStack(alignment: .leading) {
                    Text(self.p.name).font(.headline)
                    Text(self.p.desc).font(.caption)
                }
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

struct PatternList: View {
    private var patterns = [
        Pattern(name: "Catastrophizing", desc: "If something goes wrong, it will be a disaster."),
        Pattern(name: "Black and White Thinking", desc: "Looking at the world with an all-or-nothing lens."),
        Pattern(name: "Negative Filtering", desc: "Seeing only the negative and discounting the positive."),
        Pattern(name: "Personalisation and Blame", desc: "Taking full responsibility or placing 100% of blame for events outside the control of one person."),
        Pattern(name: "Mind Reading", desc: "Believing you know the thoughts and motives of other."),
        Pattern(name: "Labelling and Judging", desc: "Labelling yourself or others without information."),
        Pattern(name: "Fortune Telling", desc: "Predicting future events as if they were certain."),
        Pattern(name: "Emotional Reasoning", desc: "Mistaking feelings for facts."),
        Pattern(name: "Pressurised/Extreme Words", desc: "Using words like always, never, cannot, should, etc."),
        Pattern(name: "Over generalisation", desc: "It happened once, so it will always happen.")
    ]
    @State var selections: [Pattern] = []
    
    var body: some View {
            List {
                ForEach(self.patterns) { item in
                    MultipleSelectionRow(p: item, isSelected: self.selections.contains(item)) {
                        if self.selections.contains(item) {
                            self.selections.removeAll(where: { $0 == item })
                        }
                        else {
                            self.selections.append(item)
                        }
                    }
                }
                
        }
    }
}

struct PatternList_Previews: PreviewProvider {
    static var previews: some View {
        PatternList()
    }
}


