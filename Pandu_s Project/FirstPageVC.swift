//
//  FirstPageVC.swift
//  Pandu's Project
//
//  Created by Student on 12/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class FirstPageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
            imageview.animationImages = imageset
            imageview.animationDuration = 20
            imageview.animationRepeatCount = 50
            imageview.startAnimating()

    }
    

    @IBAction func MaintoSinUp(_ sender: Any){
        performSegue(withIdentifier: "MaintoSignUp", sender: nil)
    }
    
    @IBAction func MaintoLogin(_ sender: Any){
        performSegue(withIdentifier: "MaintoLogin", sender: nil)
    }
    
    @IBAction func FirstoAbout(_ sender: Any){
        performSegue(withIdentifier: "FirsttoAbout", sender: nil)
    }
    
    var imageset: [UIImage] = [UIImage(named:"car1")!,
                               UIImage(named:"car2")!,
                               UIImage(named:"car3")!,
                               UIImage(named:"car4")!,
                               UIImage(named:"car5")!,
                               UIImage(named:"car6")!,
                               UIImage(named:"car7")!]
    @IBOutlet var imageview: UIImageView!
    
    
}
