//
//  FestivalsEntries.swift
//  FestivalApp
//
//  Created by luxury on 2/26/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation

struct Festi: Codable {
    let name: String
    let id: String
}

struct Festival: Codable {
    let date: String
    let name: String
    let lineup: [Festi]
}
