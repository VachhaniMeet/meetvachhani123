//
//  ViewController.swift
//  pro-16
//
//  Created by meet on 24/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to share a text with UIActivity View Controls.*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    @IBOutlet weak var txt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func touchbegan (_touches:Set<UITouch>,with event:UIEvent?)
    {
        view.endEditing(true)
    }
    @IBAction func btn_share(_ sender: Any)
    {
        let share  = UIActivityViewController(activityItems: [myimg.image,txt.text], applicationActivities: nil)
        present(share, animated: true, completion: nil)
        
    }
    
}

