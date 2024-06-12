//
//  ViewController.swift
//  project1
//
//  Created by MAC2 on 22/03/1946 Saka.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    
    var email:String?
    var password:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btn_login(_ sender: UIButton)
    {
        if let email = txt_email.text,!email.isEmpty
        {
            self.email = email
        }
        if let password = txt_password.text,!password.isEmpty
        {
            self.password = password
        }
        FirebaseAuth.Auth.auth().signIn(withEmail: self.email!, password: self.password!, completion: {result,error in
            
            guard error == nil else
            {
                self.createaccount(email: self.email!,password:self.password!)
                return
            }
            let alert = UIAlertController(title: "firebase", message: "Login Successfully", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true)
            
        })
        
        txt_email.text = ""
        txt_password.text = ""
    }
    func createaccount(email:String,password:String)  {
        let alert = UIAlertController(title: "Create account", message: "new create acccount..?", preferredStyle: .alert)
        let continu = UIAlertAction(title: "continu", style: .default, handler: {_ in
            FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password, completion: {result,error in
                guard error == nil else
                {
                    let alert = UIAlertController(title: "failed", message: "Account Create failed", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "ok", style: .default))
                    return
                }
                let alert = UIAlertController(title: "yes", message: "Account Create successfully", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
                self.present(alert, animated: true)
            })
        })
        let  cancel = UIAlertAction(title: "cancel", style: .default)
        alert.addAction(continu)
        alert.addAction(cancel)
        present(alert, animated: true)
        
    }
}

