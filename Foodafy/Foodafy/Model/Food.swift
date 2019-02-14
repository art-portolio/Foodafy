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
    
    static func fetchFoodPhotos() -> [Food]
    {
        return [
            Food(title: "Grapefruit", featuredImage: UIImage(named: "f1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Food(title: "Cake", featuredImage: UIImage(named: "f2")!, color: UIColor(red: 240/255.0, green: 133/255.0, blue: 91/255.0, alpha: 0.8)),
            Food(title: "Steak", featuredImage: UIImage(named: "f3")!, color: UIColor(red: 105/255.0, green: 80/255.0, blue: 227/255.0, alpha: 0.8)),
            Food(title: "Pears", featuredImage: UIImage(named: "f4")!, color: UIColor(red: 102/255.0, green: 102/255.0, blue: 102/255.0, alpha: 0.8)),
            
            Food(title: "Meatballs", featuredImage: UIImage(named: "f5")!, color: UIColor(red: 245/255.0, green: 62/255.0, blue: 40/255.0, alpha: 0.8)),
            Food(title: "Eggs", featuredImage: UIImage(named: "f6")!, color: UIColor(red: 103/255.0, green: 217/255.0, blue: 87/255.0, alpha: 0.8)),
            Food(title: "Pancakes", featuredImage: UIImage(named: "f7")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
        ]
    }
    
}


