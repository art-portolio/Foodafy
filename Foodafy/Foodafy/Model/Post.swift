//
//  Post.swift
//  Foodafy
//
//  Created by Paul Yi on 2/14/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit
import Firebase
import SwiftyJSON

class Post {
    var caption: String!
    var imageDownloadURL: String?
    private var image: UIImage!
    
    init(image: UIImage, caption: String) {
        self.image = image
        self.caption = caption
    }
    
    
    
}
