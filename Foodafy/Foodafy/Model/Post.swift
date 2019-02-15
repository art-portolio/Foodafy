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
    private var image: UIImage!
    var caption: String!
    var imageDownloadURL: String?
    
    init(image: UIImage, caption: String) {
        self.image = image
        self.caption = caption
    }

    func save() {
        let newPostRef = Database.database().reference().child("posts").childByAutoId()
        let newPostKey = newPostRef.key
        
        // 1. save image
        if let imageData = image.jpegData(compressionQuality: 0.6) {
            // 2. create a new storage reference
            let imageStorageRef = Storage.storage().reference().child("images")
            let newImageRef = imageStorageRef.child(newPostKey)
            
            // 3. save the image to storage 1st
            newImageRef.putData(imageData).observe(.success, handler:
                { (snapshot) in
                // 4. save the post caption & download url
                self.imageDownloadURL = snapshot.metadata?.downloadURL()?.absoluteString
                let newPostDictionary = [
                    "imageDownloadURL": self.imageDownloadURL,
                    "caption": self.caption
                ]
                    
                newPostRef.setValue(newPostDictionary)
            })
        }
    }
}
