//
//  LoginViewController.swift
//  Pandu's Project
//
//  Created by Student on 26/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var Uname = String()
    var Pword = String()
    override func viewDidLoad() {
        
        super.viewDidLoad()

    }
    var n: String = ""
    var p: String = ""
    var uname: String = "Pandu"
    var pass: String = "12345"
    @IBOutlet var User: UITextField!
    
    @IBOutlet var Passwd: UITextField!
    
    @IBAction func Login(_ sender: Any) {
        if User.text == n && Passwd.text == p{
            let alert = UIAlertController(title: "Warning :(", message: "Check Your Username and Password ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated:true, completion: nil)
        }

        else if User.text! == Uname && Passwd.text! == Pword{
                performSegue(withIdentifier: "LogintoMain", sender: nil)
        }
        else if User.text == uname && Passwd.text == pass{
            performSegue(withIdentifier: "LogintoMain", sender: nil)
        }
    }
}
