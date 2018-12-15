//
//  HabitImageViewCollectionViewCell.swift
//  Habitual
//
//  Created by luxury on 12/14/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

class HabitImageCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    @IBOutlet weak var habitImage: UIImageView!
    
    static let identifier = "habitImageCell"
    
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    func setImage(image: UIImage) {
        self.habitImage.image = image
    }
    
}

