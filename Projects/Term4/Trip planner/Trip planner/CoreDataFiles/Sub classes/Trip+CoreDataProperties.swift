//
//  Trip+CoreDataProperties.swift
//  Trip planner
//
//  Created by luxury on 5/16/19.
//  Copyright © 2019 luxury. All rights reserved.
//
//

import Foundation
import CoreData


extension Trip {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Trip> {
        let request = NSFetchRequest<Trip>(entityName: "Trip")
        request.sortDescriptors = [NSSortDescriptor(key: "tripName", ascending: true)]
        return request
    }

    @NSManaged public var hasWayPoint: Bool
    @NSManaged public var tripName: String
    @NSManaged public var waypoint: NSSet?

}

// MARK: Generated accessors for waypoint
extension Trip {

    @objc(addWaypointObject:)
    @NSManaged public func addToWaypoint(_ value: Waypoint)

    @objc(removeWaypointObject:)
    @NSManaged public func removeFromWaypoint(_ value: Waypoint)

    @objc(addWaypoint:)
    @NSManaged public func addToWaypoint(_ values: NSSet)

    @objc(removeWaypoint:)
    @NSManaged public func removeFromWaypoint(_ values: NSSet)

}
