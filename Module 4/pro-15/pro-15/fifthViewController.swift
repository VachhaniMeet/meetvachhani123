//
//  fifthViewController.swift
//  pro-15
//
//  Created by meet on 24/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class fifthViewController: UIViewController {

    
    @IBOutlet weak var txt4: UITextField!
    var pkr  = UIPickerView()
    var state  = [""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.pkr.dataSource=self
        self.pkr.delegate=self
        state=["Rajkot","Surat","Morbi","Junagadh","Porbandar","Vadodara","Kachchh","Dwarka","Gandhinagar","Saputara","Bhavnagar","Somnath","Dia","Bharuch","Vapi","patan","Valsad","Ambaji","Palanpur","Palitana","Mahuva","Dahod"]
        txt4.inputView=pkr
    }
}
extension fifthViewController:UIPickerViewDataSource,UIPickerViewDelegate
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
        txt4.text=state[row]
        txt4.isUserInteractionEnabled=false
        view.endEditing(true)
    }
}
