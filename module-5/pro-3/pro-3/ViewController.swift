//
//  ViewController.swift
//  pro-3
//
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app display image in cell. */

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    var imagarray  = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableview.rowHeight=UITableView.automaticDimension
        tableview.estimatedRowHeight = 300
        
        
        tableview.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        imagarray=[#imageLiteral(resourceName: "13"),#imageLiteral(resourceName: "33"),#imageLiteral(resourceName: "88"),#imageLiteral(resourceName: "13"),#imageLiteral(resourceName: "12")]
    }


}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell =  TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.img.image=imagarray[indexPath.row]
        return cell
        
    }
    
    
}


