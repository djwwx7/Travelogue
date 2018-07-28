//
//  TripCoreCata.swift
//  Travelogue
//
//  Created by Cody Whitaker on 7/26/18.
//  Copyright © 2018 Cody Whitaker. All rights reserved.
//

import UIKit
import CoreData

@objc(Trip)
public class Trip: NSManagedObject {
    
    var entries: [Entry]? {
        return self.rawEntries?.array as? [Entry]
    }
    
    convenience init?(title: String?, descript: String?) {
        let appDel = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDel?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Trip.entity(), insertInto: context)
        
        self.title = title
        self.descript = descript
    }
}
