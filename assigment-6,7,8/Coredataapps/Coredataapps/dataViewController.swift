//
//  dataViewController.swift
//  Coredataapps
//
//  Created by meet on 20/10/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class dataViewController: UIViewController {
    
    var stdata  = [Info]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func fetchalldata ()
    {
        let dml = DMLmodel()
        stdata=dml.showalldata()
        
    }

   
  
}
extension dataViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: nil)
        cell.textLabel?.text=stdata[indexPath.row].name
        cell.detailTextLabel?.text=stdata[indexPath.row].sub
        return cell
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            let dml = DMLmodel()
            stdata=dml.deletedata(index:indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
        }
    }
    
    
}
