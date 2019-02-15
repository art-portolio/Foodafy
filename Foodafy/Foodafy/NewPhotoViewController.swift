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
    var imagePicker: UIImagePickerController!
    var takenImage: UIImage!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        captionTextView.text = textViewPlaceHolderText
        captionTextView.textColor = .lightGray
        captionTextView.delegate = self
        
        // Show the camera
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
            imagePicker.cameraCaptureMode = .photo
        } else {
            imagePicker.sourceType = .photoLibrary
        }
        
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func shareDidTap() {
        if captionTextView.text != "" && captionTextView.text != textViewPlaceHolderText && takenImage != nil {
            let newPost = Post(image: takenImage, caption: captionTextView.text)
            newPost.save()
            self.dismiss(animated: true, completion: nil)
        }
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
        if textView.text == "" {
            textView.text = textViewPlaceHolderText
            textView.textColor = .lightGray
        }
        textView.resignFirstResponder()
    }
}

extension NewPhotoViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.takenImage = image
        self.photoImageView.image = self.takenImage
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
}
