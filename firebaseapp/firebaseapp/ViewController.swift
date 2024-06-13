//
//  ViewController.swift
//  firebaseapp
//
//  Created by MAC2 on 23/03/1946 Saka.
//

import UIKit
import Firebase


class ViewController: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    @IBOutlet weak var btn_login: UIButton!
    @IBOutlet weak var btn_new: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_login(_ sender: Any)
    {
        if self.txt_username.text == "" || self.txt_password.text == ""
        {
            let alertcontroller = UIAlertController(title: "error", message: "Enter email and password", preferredStyle: .alert)
            let defaultaction = UIAlertAction(title: "ok" , style: .cancel, handler: nil)
            alertcontroller.addAction(defaultaction)
            self.present(alertcontroller, animated: true, completion: nil)
            
            
        }else
        {
            Auth.auth().signIn(withEmail: self.txt_username.text!,password: self.txt_password.text!) {(user,error) in
                if error == nil
                {
                    print("login successfully" )
                    
                }
                else
                {
                    let alertcontroller = UIAlertController(title: "error" , message: error?.localizedDescription, preferredStyle: .alert)
                    let defultaction = UIAlertAction(title: "ok" , style: .cancel, handler: nil)
                    alertcontroller.addAction(defultaction)
                    self.present(alertcontroller, animated: true, completion: nil)
                    
                    
                }
            }
        }
        
    }
    @IBAction func btn_new(_ sender: Any)
    {
        
            let signup = storyboard?.instantiateViewController(withIdentifier: "signupvc") as! signupViewController
            navigationController?.pushViewController(signup, animated: true)
    }
}

