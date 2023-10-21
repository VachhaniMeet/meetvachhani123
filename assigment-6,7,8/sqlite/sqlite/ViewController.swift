//
//  ViewController.swift
//  sqlite
//
//  Created by meet on 19/10/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if UserDefaults.standard.bool(forKey: "is_login")==true
        {
            let homevc = self.storyboard?.instantiateViewController(withIdentifier: "homevc") as! homeViewController
            homevc.modalPresentationStyle = .fullScreen
            self.present(homevc, animated: true, completion: nil)
            
        }
        
    }


    @IBAction func btn_login(_ sender: Any)
    {
        userlogin()
    }
    
    func userlogin ()
    {
        if txt_username.text == "" || txt_password.text == ""
        {
            let alert = UIAlertController(title: "error", message: "please input valid username and password", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
            txt_username.layer.borderColor=UIColor.green.cgColor
            txt_username.layer.borderWidth=2
            
            txt_password.layer.borderColor=UIColor.yellow.cgColor
            txt_password.layer.borderWidth=2
        }
        else
        {
            let login_query = "select * from signup where username='\(txt_username.text)' and password='\(txt_password.text)'"
            print(login_query)
            
            let dml = DMLOperations()
            let n = dml.fetchuser(query: login_query)
            
            if n.count==0
            {
                let alert = UIAlertController(title: "error", message: "username and password does not match", preferredStyle: .alert)
                let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(ok)
                present(alert, animated: true, completion: nil)
                
                
            }
            else
            {
                let alert = UIAlertController(title: "success", message: "login sucessfully", preferredStyle: .alert)
                let ok = UIAlertAction(title: "ok", style: .default, handler: { ACTION in
                    UserDefaults.standard.set(true, forKey:"is_login" )
                    
                    let homevc = self.storyboard?.instantiateViewController(withIdentifier: "homevc") as! homeViewController
                    homevc.modalPresentationStyle = .fullScreen
                    self.present(homevc, animated: true, completion: nil)
                    
                })
                alert.addAction(ok)
                present(alert, animated: true, completion: nil)
            }
            
            
        }
        
        
    }
    
    
    @IBAction func btn_signup(_ sender: Any)
    {
        let signupvc = storyboard?.instantiateViewController(withIdentifier: "signupvc") as! signupViewController
        navigationController?.pushViewController(signupvc, animated: true)
        
    }
    
}

