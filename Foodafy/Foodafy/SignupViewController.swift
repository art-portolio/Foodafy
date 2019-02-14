//
//  SignupViewController.swift
//  Foodafy
//
//  Created by Paul Yi on 2/13/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var email: LoginTextField!
    @IBOutlet weak var password: LoginTextField!
    @IBOutlet weak var passwordConfirm: LoginTextField!
    
    @IBAction func signUpAction(_ sender: Any) {
        
        if password.text != passwordConfirm.text {
            
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        } else {
            Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
                
                if error == nil {
                    self.performSegue(withIdentifier: "signupToHome", sender: self)
                } else {
                    let alertController = UIAlertCOntroller(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
