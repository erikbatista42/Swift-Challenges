//
//  Trip+CoreDataProperties.swift
//  Trip planner
//
//  Created by luxury on 5/14/19.
//  Copyright © 2019 luxury. All rights reserved.
//
//

import Foundation
import CoreData


extension Trip {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Trip> {
        return NSFetchRequest<Trip>(entityName: "Trip")
    }

    @NSManaged public var tripName: String?

}
