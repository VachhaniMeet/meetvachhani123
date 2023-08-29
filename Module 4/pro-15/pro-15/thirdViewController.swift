//
//  thirdViewController.swift
//  pro-15
//
//  Created by meet on 24/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {

   
    @IBOutlet weak var txt2: UITextField!
    var  pkr = UIPickerView()
    var country  = [""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.pkr.dataSource=self
        self.pkr.delegate=self
        country=["india","China","Russia","Bhutan","Afganistan","Shrilanka","Thiland","Romania","Amarica","Norway","Japan","Koria","West indies","New york","Ireland","Astralia","Bangladesh","England","New Zeland","South africa","Nepal"]
        txt2.inputView=pkr
}
}

extension thirdViewController:UIPickerViewDataSource,UIPickerViewDelegate
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return country.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return country[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txt2.text=country[row]
        txt2.isUserInteractionEnabled=false
        view.endEditing(true)
    }
    
}
