//
//  ViewController.swift
//  pro-12
//
//  Created by meet on 20/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to take date and time from datepicker and show in label.*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UIDatePicker!
    @IBOutlet weak var date: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        time.addTarget(self, action: #selector( dateTimepickervalueChanged), for: .valueChanged)
    }
     
    @objc func  dateTimepickervalueChanged(sender:UIDatePicker) {
        let dateformate = DateFormatter()
        dateformate.dateStyle = .long
        dateformate.timeStyle = .short
        let select = sender.date
        let datetime = dateformate.string(from: select)
        date.text=datetime
        
        
        
    }

}

