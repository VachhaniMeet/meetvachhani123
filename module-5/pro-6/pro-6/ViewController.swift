//
//  ViewController.swift
//  pro-6
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to show multiple button in cell when swap uitableviewcell. */

import UIKit

class ViewController: UIViewController {

    var city  = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        city=["rajkot","porbandar","ahamdabad","gondal","junagadh","kodinar","vapi","baroda","morbi"]
    }
}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_text.text=city[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let more = UITableViewRowAction(style: .normal, title: "favorite"){ACTION,index in
            print("more button")
        }
        more.backgroundColor = .red
        let favorite=UITableViewRowAction(style: .normal, title: "favorite"){ACTION,index in
        print("favorite button")
        
    }
        favorite.backgroundColor = .cyan
    
           let share=UITableViewRowAction(style: .normal, title: "share"){ACTION,index in
           print("share button")
    }
        share.backgroundColor = .blue
        return[more,favorite,share]
    }
    
}

