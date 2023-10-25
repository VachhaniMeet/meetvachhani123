//
//  ViewController.swift
//  firebase
//
//  Created by MAC1 on 14/10/23.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_login(_ sender: Any)
    {
        if self.txt_username.text == "" || self.txt_password.text == ""
        {
            let alert = UIAlertController(title: "error", message: "please enter email and password" , preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            
        }
    }
    
    
    @IBAction func btn_reset(_ sender: Any)
    {
        
    }
    
    
}

