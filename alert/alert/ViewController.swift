//
//  ViewController.swift
//  alert
//
//  Created by selsabil mohamed on 10/12/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    @IBOutlet weak var passwordText2: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "username not found!")
            
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "password not found!")
        } else if passwordText.text != passwordText2.text {
            makeAlert(titleInput: "Error", messageInput: "passwords not found!")
        } else {
            makeAlert(titleInput: "success", messageInput: "username found!")
        }
    }
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}


