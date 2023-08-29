//
//  ViewController.swift
//  pro-3
//
//  Created by meet on 21/07/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_text: UILabel!
    
    var tm = Timer()
    var timer  = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_click(_ sender: UIButton)
    {
        tm=Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(ViewController.stoptimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func stoptimer()
    {
        timer+=1
        lbl_text.text=String(timer)
    }
    
}

