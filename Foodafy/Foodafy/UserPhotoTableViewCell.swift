//
//  UserPhotoTableViewCell.swift
//  Foodafy
//
//  Created by Paul Yi on 2/14/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class UserPhotoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var shadowBackgroundView: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
