//
//  ViewController.swift
//  pro-6
//
//  Created by meet on 21/07/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to show background image within imageview.*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let backgroundimage = UIImage(named: "00")
        let  img = UIImageView(image: backgroundimage)
        img.contentMode = .scaleAspectFill
        img.frame = view.bounds
        view.addSubview(img)
        view.sendSubviewToBack(img)
    }
   
    
    

}

