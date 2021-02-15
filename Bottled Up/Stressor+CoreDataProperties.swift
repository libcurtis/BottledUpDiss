//
//  Stressor+CoreDataProperties.swift
//  Bottled Up
//
//  Created by Liberty Curtis on 17/12/2020.
//
//

import Foundation
import CoreData


extension Stressor {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Stressor> {
        return NSFetchRequest<Stressor>(entityName: "Stressor")
    }

    @NSManaged public var colour: String?
    @NSManaged public var reframe: String?
    @NSManaged public var identify: String?
    @NSManaged public var comments: String?
    @NSManaged public var name: String?
    @NSManaged public var size: Int16
    @NSManaged public var stressorID: UUID?
    
    public var sComments: String {
        get{
            return comments ?? ""
        }
        set {
            self.comments = newValue
        }
    }
    
    public var sReframe: String {
        get{
            return reframe ?? ""
        }
        set {
            self.reframe = newValue
        }
    }
    
    public var sIdentify: String {
        get{
            return identify ?? ""
        }
        set {
            self.identify = newValue
        }
    }
}

extension Stressor : Identifiable {

}
