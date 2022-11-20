//
//  MainPageViewController.swift
//  Pandu's Project
//
//  Created by Student on 02/11/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {

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
    
    var price: String = ""
    var Car: String = ""
    
    @IBOutlet var SC: UILabel!
    @IBOutlet var Ciaz: UILabel!
    
    @IBOutlet var SO: UILabel!
    
    @IBOutlet var SkodaO: UILabel!
    
    
    @IBOutlet var HC: UILabel!
    @IBOutlet var City: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let newVc: FinalViewController = segue.destination as! FinalViewController
        let cdata = price
        newVc.Cprice = cdata
        let cname = Car
        newVc.Cname = cname
    }
    
    @IBOutlet var SuzukiCiaz: UIImageView!
    var imageset: [UIImage] = [UIImage(named:"SC1")!,
                               UIImage(named:"SC2")!,
                               UIImage(named:"SC3")!,
                               UIImage(named:"SC4")!]
    
    @IBAction func btnMore1(_ sender: Any) {
        SuzukiCiaz.animationImages = imageset
        SuzukiCiaz.animationDuration = 10
        SuzukiCiaz.animationRepeatCount = 2
        SuzukiCiaz.startAnimating()
    }
    
    @IBOutlet var Skoda: UIImageView!
    var imageset1: [UIImage] = [UIImage(named:"SO1")!,
                               UIImage(named:"SO2")!,
                               UIImage(named:"SO3")!,
                               UIImage(named:"SO4")!]
    
    @IBAction func btnMore(_ sender: Any) {
        Skoda.animationImages = imageset1
        Skoda.animationDuration = 10
        Skoda.animationRepeatCount = 2
        Skoda.startAnimating()
    }
    
    @IBOutlet var Honda: UIImageView!
    var imageset2: [UIImage] = [UIImage(named:"HC1")!,
                                UIImage(named:"HC2")!]
    
    @IBAction func btnMore2(_ sender: Any) {
        Honda.animationImages = imageset2
        Honda.animationDuration = 10
        Honda.animationRepeatCount = 2
        Honda.startAnimating()
    }
    
    @IBAction func MaintoFinal(_ sender: Any){
        price = SC.text!
        Car = Ciaz.text!
        performSegue(withIdentifier: "MaintoFinal", sender: nil)
    }
    @IBAction func MaintoFinal1(_ sender: Any){
        price = SO.text!
        Car = SkodaO.text!
        performSegue(withIdentifier: "MaintoFinal", sender: nil)
    }
    @IBAction func MaintoFinal2(_ sender: Any){
        price = HC.text!
        Car = City.text!
        performSegue(withIdentifier: "MaintoFinal", sender: nil)
    }

}
