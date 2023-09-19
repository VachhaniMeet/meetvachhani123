//
//  ViewController.swift
//  pro-14
//
//  Copyright © 2023 meet. All rights reserved.
//

/*  Make an app to get data from plist and display in tableview.*/

import UIKit

class ViewController: UIViewController {
    
    var states  = [String]()
    var world = [String]()
    
    

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "MyPlist", ofType: "plist" )
        let dict  = NSDictionary(contentsOfFile: path!)
        
        states = dict?.object(forKey: "States") as! [String]
        world = dict?.object(forKey: "World") as! [String]
        
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destaination  = segue.destination as? plistViewController  {
            destaination.info = world[tableview.indexPathForSelectedRow!.row]
        }
    }
}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return states.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text=states[indexPath.row]
        return cell!
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "segue", sender: self)
    }
    
    
}

