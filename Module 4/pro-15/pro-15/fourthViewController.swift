//
//  fourthViewController.swift
//  pro-15
//
//  Created by meet on 24/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class fourthViewController: UIViewController {

    @IBOutlet weak var txt3: UITextField!
    var pkr  = UIPickerView()
    var state  = [""]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.pkr.dataSource=self
         self.pkr.delegate=self
        state=["Albania","Andorra","Barbuda","Argentina","Armenia","Austria","Bahrain","Barbados","Belarus","Belgium","Benin","Brazil","Burma","Canada","Chad","Chile","Congo","Cuba","Egypt","Eritrea","Fiji","Ghana"]
        txt3.inputView=pkr
    }

}
extension fourthViewController:UIPickerViewDataSource,UIPickerViewDelegate
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
        txt3.text=state[row]
        txt3.isUserInteractionEnabled=false
        view.endEditing(false)
    }
    
    
}
