//
//  Food.swift
//  Foodafy
//
//  Created by Paul Yi on 2/12/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class Food {
    
    var title = ""
    var featuredImage: UIImage
    var color: UIColor
    
    init(title: String, featuredImage: UIImage, color: UIColor) {
        
        self.title = title
        self.featuredImage = featuredImage
        self.color = color
    }
    
    
}


