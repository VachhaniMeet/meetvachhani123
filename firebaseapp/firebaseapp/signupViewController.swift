//
//  signupViewController.swift
//  firebaseapp
//
//  Created by MAC2 on 23/03/1946 Saka.
//

import UIKit
import Firebase

class signupViewController: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    @IBOutlet weak var btn_signup: UIButton!
    @IBOutlet weak var btn_google: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btn_google(_ sender: Any)
    {
        
    }
    
    @IBAction func btn_signup(_ sender: Any)
    {
        if txt_username.text == "" {
            let alertcontroller = UIAlertController(title: "title", message: "Enter email and password", preferredStyle: .alert)
            let defaultaction = UIAlertAction(title: "ok", style: .cancel, handler: nil)
            alertcontroller.addAction(defaultaction)
            present(alertcontroller, animated: true, completion: nil)
        }
        else
        {
            Auth.auth().createUser(withEmail: self.txt_username.text!,password: self.txt_password.text!) {(user,error) in
                if error == nil
                {
                    print(" successfully signup" )
                    let loginvc = self.storyboard?.instantiateViewController(withIdentifier: "loginvc") as! ViewController
                    self.navigationController?.pushViewController(loginvc, animated: true)
                    
                    
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
        
}
    


