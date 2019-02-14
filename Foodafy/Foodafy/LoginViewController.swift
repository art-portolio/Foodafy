//
//  LoginViewController.swift
//  Foodafy
//
//  Created by Paul Yi on 2/11/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var passwordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributedString = NSAttributedString(string: "Forgot your Password?", attributes: [NSAttributedString.Key.foregroundColor:UIColor.white, NSAttributedString.Key.underlineStyle:1])
        
        passwordButton.setAttributedTitle(attributedString, for: .normal)
        
    }
    
}

