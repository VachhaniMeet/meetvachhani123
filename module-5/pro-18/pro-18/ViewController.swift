//
//  ViewController.swift
//  pro-18
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to perform mobile number and email validation in
viewcontroller*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_login(_ sender: Any)
    {
        if (email.text?.validregister)! {
            print("valid")
        }
        else
        {
            print("error")
        }
        if (phone.text?.validregister)! {
            print("valid")
        }
        else
        {
            print("error")

        }
        if (password.text?.validregister)! {
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
    var validnumber : Bool{
        do {
            let number  = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let validation = number.matches(in: self, options: [], range: NSMakeRange(0, self.count))
            if let exa = validation.first{
                return exa.resultType == .phoneNumber && exa.range.location == 0 && exa.range.length == self.count && self.count == 10
            }
            else
            {
                return false
            }
            
            
        }catch{
            return false
        }
        
    }
    var validpass : Bool{
        let validator = NSPredicate(format: "mathes %@", "^(?=.[a-z])(?=.[$@&%!*#])[A-Za-z\\d$%&#@]{8,}")
        return validator.evaluate(with: self)
        
    }
    
    
    
}

