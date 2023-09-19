//
//  ViewController.swift
//  pro-11
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to create dynamic toolbar and bar button item.*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_button1(_ sender: Any)
    {
        let alert = UIAlertController(title: "hello", message: "toolbar", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
        let more = UIAlertAction(title: "more", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
        }

    @IBAction func btn_button2(_ sender: Any)
    {
        let photo = UIImagePickerController()
        present(photo, animated: true, completion: nil)
        
    }

    @IBAction func btn_button3(_ sender: Any)
    {
        let alert = UIAlertController(title: "welcome", message: "new name", preferredStyle: .alert)
        alert.addTextField{(txt) in
            
            
        }
        let ok = UIAlertAction(title: "cancel", style: .default, handler: nil)
        let more = UIAlertAction(title: "more", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
        }
    @IBAction func btn_button4(_ sender: Any)
    
    {
        let alert = UIAlertController(title: "color", message: "add color", preferredStyle: .actionSheet)
        let button1 = UIAlertAction(title: "red", style: .default, handler: nil)
        let button2 = UIAlertAction(title: "green", style: .destructive, handler: nil)
        let button3 = UIAlertAction(title: "red", style: .destructive, handler: nil)
        let button4 = UIAlertAction(title: "blue", style: .destructive, handler: nil)
        alert.addAction(button1)
        alert.addAction(button2)
        alert.addAction(button3)
        alert.addAction(button4)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func btn_button5(_ sender: Any)
    {
        view.backgroundColor=UIColor.systemBlue
    }
    
}


