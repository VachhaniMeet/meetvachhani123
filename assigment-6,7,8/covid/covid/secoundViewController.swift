//
//  secoundViewController.swift
//  covid
//
//  Created by meet on 21/10/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class secoundViewController: UIViewController {

    @IBOutlet weak var lbl_statename: UILabel!
    @IBOutlet weak var lbl_statecode: UILabel!
    @IBOutlet weak var lbl_lastupdate: UILabel!
    @IBOutlet weak var lbl_activecase: UILabel!
    @IBOutlet weak var lbl_confirmed: UILabel!
   
    @IBOutlet weak var lbl_deaths: UILabel!
    @IBOutlet weak var lbl_recovered: UILabel!
    
    
    var lblstate  = ""
    var lblstatecode = ""
    var lbllastupdate  = ""
    var lblactive = ""
    var lblconfirmed = ""
    var lbldeaths = ""
    var lblrecoverd = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbl_statename.text=lblstate
        lbl_statecode.text=lblstatecode
        lbl_lastupdate.text=lbllastupdate
        lbl_activecase.text=lblactive
        lbl_confirmed.text=lblconfirmed
        lbl_deaths.text=lbldeaths
        lbl_recovered.text=lblrecoverd
    }
    



}
