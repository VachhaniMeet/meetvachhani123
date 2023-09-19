//
//  ViewController.swift
//  pro-4
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to set delete button in each cell.s*/


import UIKit

class ViewController: UIViewController {
    
    var city   = [""]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        city = ["Rajkot","Surat","Navsari","Dahod","Ahamdabad","Gondal","Gandhinadar","Baroda","Patan","Mandvi","Pune","Mumbai","Delhi","Kolkata","Jammu"]
    }
}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            city.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lbl_text.text = city[indexPath.row]
        return cell
        
        }
    }
    
    


