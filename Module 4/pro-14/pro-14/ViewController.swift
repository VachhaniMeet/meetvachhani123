//
//  ViewController.swift
//  pro-14
//
//  Created by meet on 22/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to compare a current date to selected date from datepicker.*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datepick: UIDatePicker!
    @IBOutlet weak var txt_text: UITextField!
    @IBOutlet weak var btn_button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonTapped(_sender:UIButton)
    {
        
        let Selecteddate = datepick.date
        let currentdate  = Date()
        
        let comparsionResult = currentdate.compare(Selecteddate)
        
        if comparsionResult == .orderedAscending
        {
            txt_text.text="selected date is an the future."
        }
        else if comparsionResult == .orderedDescending
        {
            txt_text.text="selected date is in the past"
        }
        else
        {
            txt_text.text="selectd date is the same as the current date."
            
        }
        
        
        
    }

}

