//
//  ViewController.swift
//  pro-16
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app When user login then store all information in plist and
set logic like that user login only onces not every time using plist.*/

import UIKit

class ViewController: UIViewController {
    
      var data :[String]=[]

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "myplist", ofType: "plist")
        let dic = NSDictionary(contentsOfFile: path!)
        data = dic?.object(forKey: "sign up") as! [String]
        if UserDefaults.standard.bool(forKey: "ok")
        {
            let homeViewController = storyboard?.instantiateViewController(withIdentifier: "homeViewController") as! homeViewController
            navigationController?.pushViewController(homeViewController, animated: true)
            
            
        }
        
        
    }

    @IBAction func btn_login(_ sender: Any)
    {
        if txt_username.text==data[0]&&txt_password.text==data[1]
        {
            UserDefaults.standard.set(true, forKey: "ok")
            let homeViewController = storyboard?.instantiateViewController(withIdentifier: "homeViewController") as! homeViewController
            navigationController?.pushViewController(homeViewController, animated: true)
            
            
        }
        else
        {
            let alert = UIAlertController(title: "login failed", message: "invalid", preferredStyle: .alert)
            let art = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(art)
            present(alert, animated: true, completion: nil)
            
            
        }
    }
    
}

