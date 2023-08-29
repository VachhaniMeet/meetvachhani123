//
//  ViewController.swift
//  pro-9
//
//  Created by meet on 10/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to open media library like. MP3,mp4 within ui image picker controller.*/

 import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_sub: UITextField!
    
    var phrview  = UIPickerView()
    var subject  = [""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        subject=["yellow","green","orange","pink","blue"]
        txt_sub.inputView=phrview
        
        phrview.dataSource=self
        phrview.delegate=self
    }

}

extension ViewController:UIPickerViewDataSource,UIPickerViewDelegate
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return subject.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return subject[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txt_sub.text=subject[row]
        view.endEditing(true)
    }
    
}

