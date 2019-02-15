//
//  NewPhotoViewController.swift
//  Foodafy
//
//  Created by Paul Yi on 2/14/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class NewPhotoViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var captionTextView: UITextView!
    
    var textViewPlaceHolderText = "What's on your mind?"
    
    // Camera
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareDidTap() {
        
    }
    
    @IBAction func cancelDidTap(_ sender: Any) {
        
    }

}

extension NewPhotoViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == textViewPlaceHolderText {
            textView.text = ""
            textView.textColor = .white
        }
        textView.becomeFirstResponder()
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text = "" {
            textView.text = textViewPlaceHolderText
            textView.textColor = .lightGray
        }
        textView.resignFirstResponder()
    }
}
