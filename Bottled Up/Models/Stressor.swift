/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual stressor.
*/

import SwiftUI
import CoreLocation

class Stressor: ObservableObject, Codable, Identifiable {
    @Published var id: UUID
    @Published var name: String
    @Published var colour: String
    @Published var comments: String
    @Published var size: Int
    
    enum CodingKeys: CodingKey {
        case name, colour, comments, size
    }
    
    init(name: String, colour: String, comments: String, size: Int) {
        self.id = UUID()
        self.name = name
        self.colour = colour
        self.comments = comments
        self.size = size
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(name, forKey: .name)
        try container.encode(colour, forKey: .colour)
        try container.encode(comments, forKey: .comments)
        try container.encode(size, forKey: .size)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = UUID()
        name = try container.decode(String.self, forKey: .name)
        colour = try container.decode(String.self, forKey: .colour)
        comments = try container.decode(String.self, forKey: .comments)
        size = try container.decode(Int.self, forKey: .size)
    }
}

