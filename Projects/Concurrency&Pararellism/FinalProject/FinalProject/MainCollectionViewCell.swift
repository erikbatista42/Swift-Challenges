//
//  MainCollectionViewCell.swift
//  FinalProject
//
//  Created by luxury on 6/27/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    let backgroundImage: UIImageView = {
        let iv = UIImageView()
        //        iv.backgroundColor = .red
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .gray
        
        addSubview(backgroundImage)
        backgroundImage.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
