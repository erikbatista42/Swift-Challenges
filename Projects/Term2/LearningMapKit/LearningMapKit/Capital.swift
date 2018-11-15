//
//  Capital.swift
//  LearningMapKit
//
//  Created by luxury on 11/15/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit
import MapKit

class Capital: NSObject, MKAnnotation {
    
//    With map annotations, you can't use structs, and you must inherit from NSObject because it needs to be interactive with Apple's Objective-C code.
    
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String?
    
    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }

}
