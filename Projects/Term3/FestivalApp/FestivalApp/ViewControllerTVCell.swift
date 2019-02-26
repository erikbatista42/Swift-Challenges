//
//  ViewControllerTVCell.swift
//  FestivalApp
//
//  Created by luxury on 2/26/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerTVCell: UITableViewCell {
    
    let festivalNameLabel: UILabel = {
        let label = UILabel()
        label.text = "festi name"
        return label
    }()
    
    let festivalDate: UILabel = {
        let label = UILabel()
         label.text = "festi date"
        return label
    }()
    
    let festivalNumberPeople: UILabel = {
        let label = UILabel()
         label.text = "festi num of ppl"
        return label
    }()
    
    var festival: Festival? {
        didSet {
            guard let festival = festival else { return }
            festivalNameLabel.text = festival.name
            festivalDate.text = festival.date
            festivalNumberPeople.text = String(festival.lineup.count)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .magenta

        
        addSubview(festivalNameLabel)
        festivalNameLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 25)
        
        addSubview(festivalDate)
        festivalDate.anchor(top: festivalNameLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 25)
        
        addSubview(festivalNumberPeople)
        festivalNumberPeople.anchor(top: festivalDate.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 25)
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
