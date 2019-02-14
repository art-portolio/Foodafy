//
//  LoginViewController.swift
//  Foodafy
//
//  Created by Paul Yi on 2/11/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var email: LoginTextField!
    @IBOutlet weak var password: LoginTextField!
    
    @IBOutlet weak var passwordButton: UIButton!
    
    @IBAction func loginAction(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
            if error == nil{
                self.performSegue(withIdentifier: "loginToHome", sender: self)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributedString = NSAttributedString(string: "Forgot your Password?", attributes: [NSAttributedString.Key.foregroundColor:UIColor.white, NSAttributedString.Key.underlineStyle:1])
        
        passwordButton.setAttributedTitle(attributedString, for: .normal)
        
    }
    
}

