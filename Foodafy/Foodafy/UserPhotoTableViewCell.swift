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
    
    func updateUI() {
        // Set shadow background view
        shadowBackgroundView.layer.shadowPath = UIBezierPath(rect: shadowBackgroundView.bounds).cgPath
        shadowBackgroundView.layer.shadowColor = UIColor.black.cgColor
        shadowBackgroundView.layer.shadowOpacity = 0.1
        shadowBackgroundView.layer.shadowOffset = CGSize(width: 2, height: 2)
        shadowBackgroundView.layer.shadowRadius = 2
        shadowBackgroundView.layer.masksToBounds = false
        shadowBackgroundView.layer.cornerRadius = 3.0
    
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
