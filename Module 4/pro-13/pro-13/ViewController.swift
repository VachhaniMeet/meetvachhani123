//
//  ViewController.swift
//  pro-13
//
//  Created by meet on 20/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to display color name in pickerview, select a color then changed view background color as per selection.*/

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
   
    

    @IBOutlet weak var color: UIPickerView!
    @IBOutlet weak var colorview: UIView!
    
    let colors : [(name:String,color:UIColor)]=[
        ("green",.green),
        ("red",.red),
        ("black",.black),
        ("blue",.blue),
        ("orange",.orange)
    
    ]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        colors.count
       }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        color.delegate = self
        color.dataSource = self
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selcolor  = colors[row].color
        colorview.backgroundColor=selcolor
        
    }

   
}


