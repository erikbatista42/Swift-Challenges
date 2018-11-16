//
//  MoodEntryTableViewCell.swift
//  MoodTracker
//
//  Created by luxury on 11/16/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

class MoodEntryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelMoodTitle: UILabel!
    @IBOutlet weak var labelMoodDate: UILabel!
    @IBOutlet weak var imageViewMoodColor: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
