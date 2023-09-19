//
//  ViewController.swift
//  pro 1
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to display simple array item in tableview */

import UIKit

class ViewController: UIViewController {
    
    var data  = [""]
    var sub  = [""]
    var img  = [UIImage]()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        data = ["rajkot","surat","ahamdabad","baroda","kuchha","gondal"]
        sub = ["c","php","java","angular","c++","react"]
        img = [#imageLiteral(resourceName: "c"),#imageLiteral(resourceName: "php"),#imageLiteral(resourceName: "java"),#imageLiteral(resourceName: "angular"),#imageLiteral(resourceName: "c++"),#imageLiteral(resourceName: "react")]
    }
}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text=data[indexPath.row]
        cell.detailTextLabel?.text=sub[indexPath.row]
        cell.imageView?.image=img[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let alert  = UIAlertController(title: data[indexPath.row], message: sub[indexPath.row], preferredStyle: .alert)
        let ok  = UIAlertAction(title: "ok", style: .default, handler: nil)
        let more  = UIAlertAction(title: "more", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secoundViewController = storyboard?.instantiateViewController(identifier: "secoundViewController") as! secoundViewController
        secoundViewController.str_title=data[indexPath.row]
        secoundViewController.str_subtitle=sub[indexPath.row]
        secoundViewController.str_img=img[indexPath.row]
        navigationController?.pushViewController(secoundViewController, animated: true)
        
    }
    
}

