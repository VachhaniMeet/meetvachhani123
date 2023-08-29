//
//  ViewController.swift
//  pro-11
//
//  Created by meet on 20/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to display list of courses in pickerview.*/

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerview: UIPickerView!
    
    @IBOutlet weak var lbl_course: UILabel!
     let  courses  = ["ios","c++","java","php","angular"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        pickerview.delegate=self
        pickerview.dataSource=self
        
    }
    
   func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
   }
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let course  = courses[row]
        lbl_course.text=course
        
    }
}

