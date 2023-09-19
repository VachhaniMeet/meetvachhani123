//
//  ViewController.swift
//  pro-17
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to create registration form and perform validation
using textfield validator*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_app: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_button(_ sender: Any)
    {
        if (txt_app.text?.validregister)! {
            print("valid")
            
        }
        else
        {
            print("error")
        }
    }
}
extension String{
    var validregister : Bool{
        let register = "[A-ZO-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3}"
        let test=NSPredicate(format: "matchs %@", register)
        return test.evaluate(with: self)
        
    }
    
}

