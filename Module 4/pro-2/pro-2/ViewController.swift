//
//  ViewController.swift
//  pro-2
//
//  Created by meet on 18/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/*  Make an app to Generate alert when user successfully login.*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_login(_ sender: UIButton)
    {
        let alert = UIAlertController(title: "", message: "Login Sucessfully...", preferredStyle: .alert)
        
        let ok=UIAlertAction(title: "OK", style:.default, handler: nil)
    
        alert.addAction(ok)
        self.present(alert,animated: true,completion: nil)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

