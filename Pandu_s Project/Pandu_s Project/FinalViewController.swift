//
//  FinalViewController.swift
//  Pandu's Project
//
//  Created by Student on 09/11/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    var Cprice = String()
    var Cname = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        price.text = Cprice
        car.text = Cname
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
   
    
    var Days: String = ""
    
    @IBOutlet var car: UILabel!
    
    @IBOutlet var price: UILabel!
    
    @IBOutlet var days: UILabel!
    
    @IBOutlet var totprice: UILabel!
    
    @IBOutlet var totalDays: UISlider!
    
    @IBOutlet var name: UITextField!
    
    @IBOutlet var mail: UITextField!
    
    @IBOutlet var Phn: UITextField!
    
    @IBOutlet var Address: UITextView!
    
    
    @IBAction func noofDays(_ sender: Any) {
        days.text = String(Int(totalDays.value))
        Days = String(Int(totalDays.value))
        totprice.text = String(Int(Days)! * Int(price.text!)!)
        
    }
    
    @IBAction func finalSubmit(_ sender: Any) {
        let alert = UIAlertController(title: "Success :)", message: "Your Car has been booked !", preferredStyle: UIAlertController.Style.alert)
        let okHandler = {(action: UIAlertAction)->Void in
            self.performSegue(withIdentifier: "FinaltoFirst", sender: self)
        }
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: okHandler))
        present(alert, animated:false, completion: nil)
    }
}
