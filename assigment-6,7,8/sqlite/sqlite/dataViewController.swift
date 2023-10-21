//
//  dataViewController.swift
//  sqlite
//
//  Created by meet on 19/10/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class dataViewController: UIViewController {
    
    var alldata  = Array<Any>()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        allstddata()

        // Do any additional setup after loading the view.
    }
    
    func allstddata()
    {
        let selectquery="select * from data"
        print(selectquery)
        
        let dml = DMLOperations()
        alldata=dml.fetchalldata(query: selectquery)
        print(alldata)
        
        
        
    }

}

extension dataViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alldata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var dict = alldata[indexPath.row] as! Dictionary<String,Any>
        var cell = TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_fullname.text=dict["fullname"] as? String
        cell.lbl_subject.text=dict["subject"] as? String
        cell.lbl_city.text=dict["city"] as? String
        return cell
    }
    
    
    
}
