//
//  ViewController.swift
//  Pandu's Project
//
//  Created by Student on 12/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    var userName:String = ""
    var email:String = ""
    var phone:String = ""
    var password:String = ""
    var repassword:String = ""

    @IBOutlet var name: UITextField!
    @IBOutlet var Email: UITextField!
    @IBOutlet var Phone: UITextField!
    @IBOutlet var Password: UITextField!
    @IBOutlet var RePassword: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "Signup" {
        let newVc: LoginViewController = segue.destination as! LoginViewController
        let ndata = name.text!
        newVc.Uname = ndata
        let pdata = Password.text!
        newVc.Pword = pdata
        }
    }
    
    
    @IBAction func SignUp(_ sender: Any) {
        userName = name.text!
        email = Email.text!
        phone = Phone.text!
        password = Password.text!
        repassword = RePassword.text!

        if password == repassword {
            let alert = UIAlertController(title: "Successful !", message: "You have Successfully SignUp", preferredStyle:UIAlertController.Style.alert)

            let okHandler = {(action: UIAlertAction)->Void in
                self.performSegue(withIdentifier: "Signup", sender: self)
            }
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: okHandler))
            present(alert, animated:false, completion: nil)
        }
        else{
            let alert = UIAlertController(title: "Warning", message: "Check Your Password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alert, animated:false, completion: nil)
        }
    }
}
