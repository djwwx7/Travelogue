//
//  EntryCoreData.swift
//  Travelogue
//
//  Created by Cody Whitaker on 7/26/18.
//  Copyright © 2018 Cody Whitaker. All rights reserved.
//

import UIKit
import CoreData

@objc(Entry)
public class Entry: NSManagedObject {
    
    var date: Date? {
        get {
            return rawDate as Date?
        }
        set {
            rawDate = newValue as NSDate?
        }
    }
    
    var image: UIImage? {
        get {
            if let image = rawImage as Data? {
                return UIImage(data: imagee)
            }
            return nil
        }
        set {
            if let imagee = newValue {
                rawImage = UIImagePNGRepresentation(imagee) as NSData?
            }
        }
    }
    
    convenience init?(title: String?, descript: String?, date: Date?, image: UIImage?) {
        let appDel = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDel?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Entry.entity(), insertInto: managedContext)
        
        self.title = title
        self.descript = descript
        self.date = date
        self.image = image
    }
}
