//
//  secoundViewController.swift
//  pro-15
//
//  Created by meet on 24/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class secoundViewController: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    var pkr = UIPickerView()
    var state = [""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.pkr.dataSource=self
        self.pkr.delegate=self
        
        state=["Gujarat","Delhi","Channai","Punjab","Jammu","Kolkata","Odisha","Sikkim","Bhopal","Goa","Bihar","Haryana","Rajasthan","Mumbai","Mizoram","Assam"]
        txt1.inputView=pkr
    }
}

extension secoundViewController:UIPickerViewDataSource,UIPickerViewDelegate
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return state.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return state[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txt1.text=state[row]
        txt1.isUserInteractionEnabled=false
        view.endEditing(true)
    }
    
}
