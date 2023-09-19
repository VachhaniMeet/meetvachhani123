//
//  secoundViewController.swift
//  pro 1
//
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class secoundViewController: UIViewController {

    @IBOutlet weak var myimage: UIImageView!
   @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_subtitle: UILabel!
    
    var str_img  = UIImage()
    var str_title = ""
    var str_subtitle = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myimage.image=str_img
        lbl_title.text=str_title
        lbl_subtitle.text=str_subtitle
    }
    


}
