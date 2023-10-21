//
//  ViewController.swift
//  Coredataapps
//
//  Created by meet on 20/10/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_subject: UITextField!
    
    @IBOutlet weak var txt_city: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
             print(path)
    }


    @IBAction func btn_save(_ sender: Any)
    {
        insertrecord()
        
    }
     func insertrecord ()
        {
            let stdata = ["name":txt_name.text!,"sub":txt_subject.text!,"city":txt_city.text!]
            
            let alert = UIAlertController(title: "success", message: "your data is save", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .destructive, handler: {ACTION in
                self.txt_name.text=""
                self.txt_subject.text=""
                self.txt_city.text=""
                
                let dml=DMLmodel()
                dml.saveinfo(data: stdata)
                try? self.context.save()
            })
            let more = UIAlertAction(title: "more", style: .destructive, handler: nil)
            alert.addAction(ok)
            alert.addAction(more)
            present(alert, animated: true, completion: nil)
        }

    @IBAction func btn_showdata(_ sender: Any)
    {
        let datavc = storyboard?.instantiateViewController(withIdentifier: "datavc") as! dataViewController
        present(datavc, animated: true, completion: nil)
    }
    
}

