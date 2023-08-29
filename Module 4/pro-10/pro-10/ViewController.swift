//
//  ViewController.swift
//  pro-10
//
//  Created by meet on 20/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to take a date from datepicker and display in label.*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_date: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func datepick(_ sender: UIDatePicker)
    {
        let date  = sender.date
        let  dtfrm  = DateFormatter()
        dtfrm.dateStyle = .short
        lbl_date.text=dtfrm.string(from: date)
        
        
    }
}

