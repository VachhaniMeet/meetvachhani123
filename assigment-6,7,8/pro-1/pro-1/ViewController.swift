//
//  ViewController.swift
//  pro-1
//
//  Created by meet on 21/09/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* display content of the following api into table view*/

import UIKit

class ViewController: UIViewController {
    
    var api = Array<Any>()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        callingapi()
    }
    func callingapi()
    {
        let url = URL(string: "https://restcountries.com/v2/all")
        
        do
        {
            let edata = try Data(contentsOf: url!)
            api=try JSONSerialization.jsonObject(with: edata) as! Array<Any>
            print(api)
        }
        catch
        {
            print(error.localizedDescription)
        }
        
    }

}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return api.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dict = api[indexPath.row] as! Dictionary<String,Any>
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text=dict["name"] as? String
        cell.detailTextLabel?.text=dict["capital"] as? String
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dict = api[indexPath.row] as! Dictionary<String,Any>
        let alert = UIAlertController(title: dict["name"] as? String, message: String((dict["population"] as? Int)!), preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion:nil)
        
        
    }
    
}


