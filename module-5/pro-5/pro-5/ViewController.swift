//
//  ViewController.swift
//  pro-5
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to increase height of each cell. */

import UIKit

class ViewController: UIViewController {
    
    var city =  [""]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    city=["surat","porbandar","baroda","okha","gondal","jamanagar","morbi","ahamdabad","junagadha","dwarka","sommnath","vapi"]
    }
    
}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lbl_text.text=city[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(38+(indexPath.row*10))
    }
    
}

