//
//  ViewController.swift
//  pro-4
//
//  Created by meet on 21/07/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to take two button for hide and show label.*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_hide(_ sender: UIButton)
    {
        lbl_text.isHidden=true
        
    }
    
    @IBAction func btn_show(_ sender: UIButton)
    {
        lbl_text.isHidden=false
        
    }
}

