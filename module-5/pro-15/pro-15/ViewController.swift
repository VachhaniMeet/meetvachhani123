//
//  ViewController.swift
//  pro-15
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to clear all key and value permanently in ios.*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let value1 =  UserDefaults.standard.string(forKey: "name")
        let value2 = UserDefaults.standard.string(forKey: "city")
              
              if value1 != nil && value2 != nil {
                  lbl1.text = "Hello \(value1 ?? "")"
                  lbl2.text = "Your city Name is \(value2 ?? "")"
              }
             
        }

    @IBAction func btn_submit(_ sender: Any)
    {
        btnsubmit()
    }
    
    func btnsubmit()
    {
       if txt_city.text != "" || txt_name.text != ""{
        UserDefaults.standard.set(txt_name.text, forKey: "name")
        UserDefaults.standard.set(txt_city.text, forKey: "city")
        let message = UIAlertController(title: "yes", message: "detail successfully", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: { (action) -> Void in
            self.lbl1.text=self.txt_name.text
            self.lbl2.text=self.txt_city.text

        })
        message.addAction(ok)
        self.present(message, animated: true, completion: nil)
        
        
        }
        else
       {
        let message  = UIAlertController(title: "oops", message: "textfield is empty", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: {(action) -> Void in})
        message.addAction(ok)
        self.present(message, animated: true, completion: nil)
        
}
            
    }
    func btnremove ()
    {
        UserDefaults.standard.removeObject(forKey: "name")
         UserDefaults.standard.removeObject(forKey: "city")
        let message = UIAlertController(title: "delete", message: "details delete successfully ", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style:.default, handler: {(action) -> Void in
            print("ok button tapped")
            
        })
        message.addAction(ok)
        self.present(message, animated: true, completion: nil)
        lbl1.text="oops!data here"
        lbl2.text="oops!data here"
        
        
    }
    
    @IBAction func btn_remove(_ sender: Any)
    {
        self.btnremove()
    }
    
     
}

