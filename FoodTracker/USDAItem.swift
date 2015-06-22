//
//  USDAItem.swift
//  FoodTracker
//
//  Created by Nicholai de Guzman on 6/22/15.
//  Copyright (c) 2015 Nic. All rights reserved.
//

import Foundation
import CoreData

@objc (USDAItem)
class USDAItem: NSManagedObject {

    @NSManaged var calcium: String
    @NSManaged var carbohydrate: String
    @NSManaged var protein: String
    @NSManaged var idValue: String
    @NSManaged var fatTotal: String
    @NSManaged var energy: String
    @NSManaged var dateAdded: NSDate
    @NSManaged var cholesterol: String
    @NSManaged var name: String
    @NSManaged var sugar: String
    @NSManaged var vitaminC: String

}
