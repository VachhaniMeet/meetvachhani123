//
//  secoundViewController.swift
//  pro-2
//
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class secoundViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_subtitle: UILabel!
    
    var strimg  = UIImage()
    var str_title = ""
    var str_subtitle = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myimg.image=strimg
        lbl_title.text=str_title
        lbl_subtitle.text=str_subtitle
    }
    


}
