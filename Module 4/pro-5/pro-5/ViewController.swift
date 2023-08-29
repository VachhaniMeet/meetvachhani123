//
//  ViewController.swift
//  pro-5
//
//  Created by meet on 21/07/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app for present alert with two text field and two action
now get both value from text field through button click.*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_text: UITextField!
    
    @IBOutlet weak var txt_text2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_alert(_ sender: UIButton)
    {
        let text1  = txt_text.text ?? ""
        let text2 = txt_text2.text ?? ""
        
        let alert = UIAlertController(title: "alert", message: "text1:\(text1)\n text2:\(text2)", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
        
        
        
        
        
    }
    
}

