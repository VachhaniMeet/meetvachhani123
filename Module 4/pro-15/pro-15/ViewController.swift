//
//  ViewController.swift
//  pro-15
//
//  Created by meet on 22/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

/*  Make an app to take country, state picker when user select country then respected state will be shown(take a single pickerview) to navigate from one page to another page using segue to perform navigation using four page(using push, pop Methodology.*/

import UIKit

class ViewController:UIViewController{

    @IBOutlet weak var txt: UITextField!
    var pkr  = UIPickerView()
       var country = [""]
       
       
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
           self.pkr.dataSource = self
           self.pkr.delegate = self
           country = ["india","africa","koria","china","brazil"]
           txt.inputView=pkr
       }
}


extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
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
        if  row == 0
        {
            
            let secoundviewController = self.storyboard?.instantiateViewController(withIdentifier: "secoundViewController") as! secoundViewController
            self.navigationController?.pushViewController(secoundviewController, animated: true)
            
        }
        if  row == 1
               {
                   
                   let thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "thirdViewController") as! thirdViewController
                   self.navigationController?.pushViewController(thirdViewController, animated: true)
                   
               }
        if  row == 2
               {
                   
                   let fourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "fourthViewController") as! fourthViewController
                   self.navigationController?.pushViewController(fourthViewController, animated: true)
                   
               }
        if  row == 3
               {
                   
                   let fifthViewController = self.storyboard?.instantiateViewController(withIdentifier: "fifthViewController") as! fifthViewController
                   self.navigationController?.pushViewController(fifthViewController, animated: true)
                   
               }
       }
    
}




