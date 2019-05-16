//
//  Waypoint+CoreDataProperties.swift
//  Trip planner
//
//  Created by luxury on 5/16/19.
//  Copyright © 2019 luxury. All rights reserved.
//
//

import Foundation
import CoreData


extension Waypoint {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Waypoint> {
        let request = NSFetchRequest<Waypoint>(entityName: "Waypoint")
        request.sortDescriptors = [NSSortDescriptor(key: "waypoint", ascending: true)]
        return request
    }

    @NSManaged public var waypoint: String?
    @NSManaged public var trip: Trip?

}
