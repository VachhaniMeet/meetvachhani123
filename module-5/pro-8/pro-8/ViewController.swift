//
//  ViewController.swift
//  pro-8
//
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var city  = [""]
    var state = [""]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        city=["rajkot","surat","ahamdabad","gondal","baroda","jamagar","kuchha"]
        state=["gujarat","mumbai","pune","kolkata","delhi","nagpur","jammu"]
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_city.text=city[indexPath.row]
        cell.lbl_state.text=state[indexPath.row]
        let color : [UIColor]=[.red,.yellow,.blue,.brown,.darkGray,.gray,.green]
        cell.view.backgroundColor=color[indexPath.row % color.count]
        
        return cell
        
    }
    
    
}

