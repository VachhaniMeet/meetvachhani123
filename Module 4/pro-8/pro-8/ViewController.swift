//
//  ViewController.swift
//  pro-8
//
//  Created by meet on 10/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to take two textfield in which first textfield can take value from keyboard where as other has not.*/

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
        let  dtfrm = DateFormatter()
        dtfrm.dateStyle = .short
        lbl_date.text=dtfrm.string(from:date)
        
        
        
    }
}

