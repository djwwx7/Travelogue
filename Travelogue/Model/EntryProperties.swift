//
//  EntryProperties.swift
//  Travelogue
//
//  Created by Cody Whitaker on 7/26/18.
//  Copyright © 2018 Cody Whitaker. All rights reserved.
//

import Foundation
import CoreData

extension Entry {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }
    
    @NSManaged public var title: String?
    @NSManaged public var descript: String?
    @NSManaged public var rawDate: NSDate?
    @NSManaged public var rawImage: NSData?
    @NSManaged public var trip: Tripp?
    
}
