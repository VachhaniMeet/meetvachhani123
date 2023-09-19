//
//  plistViewController.swift
//  pro-14

//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class plistViewController: UIViewController {

    @IBOutlet weak var lbl_plist: UILabel!
    
    var info  = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbl_plist.text=info
    }


}
