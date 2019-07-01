//
//  PhotoMetadata.swift
//  FinalProject
//
//  Created by luxury on 6/28/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation

struct PopularPhotosJSONModel: Decodable {
    let photos: Photos?
    let stat: String?
}

struct Photos: Decodable {
    let page: Int?
    let pages: Int?
    let perpage: Int?
    let total: Int?
    let photo: [Photo?]
}

struct Photo: Decodable {
   let id: String?
   let owner: String?
   let secret: String?
   let server: String?
   let farm: Int?
   let title: String?
   let ispublic: Int?
   let isfriend: Int?
   let isfamily: Int?
}
