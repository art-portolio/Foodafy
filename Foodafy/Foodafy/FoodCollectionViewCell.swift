//
//  FoodCollectionViewCell.swift
//  Foodafy
//
//  Created by Paul Yi on 2/13/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var foodTitleLabel: UILabel!
    @IBOutlet weak var backgroundColorView: UIView!
    
    var food: Food? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        if let food = food {
            featuredImageView.image = food.featuredImage
            foodTitleLabel.text = food.title
            backgroundColorView.backgroundColor = food.color
        } else {
            featuredImageView.image = nil
            foodTitleLabel.text = nil
            backgroundColorView.backgroundColor = nil
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        layer.shadowRadius = 2
        layer.shadowOpacity = 0.8
        layer.shadowOffset = CGSize(width: 5, height: 10)
        
        self.clipsToBounds = false
    }
}
