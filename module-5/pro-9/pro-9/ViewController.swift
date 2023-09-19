//
//  ViewController.swift
//  pro-9
//
//  Copyright © 2023 meet. All rights reserved.
//

/*Make an app application to display collection view inside cell. 21Make an app to take one table view and set number of different styles of cell in which put collection view and scroll image in horizontal in multiple uitableviewcell. */

import UIKit


var pro = [mydata(list: "1list", content: ["1","2","3","4","5","6","7","8","9","10"]),
           mydata(list: "2list", content: ["1","3","2","5","8","6","7","8","9","10"]),
           mydata(list: "3list", content: ["1","2","3","10","5","6","7","8","9","4"]),
           mydata(list: "4list", content: ["2","1","3","4","9","6","7","8","5","10"]),
           mydata(list: "5list", content: ["1","8","3","10","5","6","7","2","9","4"])



]

class ViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        cell.collectionview.tag=indexPath.section
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return pro[section].list
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return pro.count
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .secondarySystemBackground
    }
    
    
}

