//
//  ViewController.swift
//  pro-13
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to hide tab bar panel in specific viewcontroller like
login and registration.*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_user: UITextField!
    @IBOutlet weak var txt_pas: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_login(_ sender: Any)
    {
        let secoundvc = storyboard?.instantiateViewController(identifier: "secvc")  as! tabViewController
        navigationController?.pushViewController(secoundvc, animated: true)
        
    }
    
}

