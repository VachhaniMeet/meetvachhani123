//
//  ViewController.swift
//  covid
//
//  Created by meet on 24/09/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    @IBOutlet weak var tableview: UITableView!
    var apidata  = [apimodel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apicalling()
        
    }
    func apicalling()
  {
      let url=URL(string: "https://data.covid19india.org/data.json")
      
      URLSession.shared.dataTask(with: url!) {data, response, error in
          
        do
        {
           let result = try JSONDecoder().decode(Newdata.self, from: data!)
           self.apidata = result.statewise!
           print(self.apidata)
                      
           DispatchQueue.main.async {
           self.tableview.reloadData()
            }
        }
        catch
        {
            print(error.localizedDescription)
       }
                  
     }.resume()
  }
    
}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apidata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lbl_state.text=apidata[indexPath.row].state
        cell.lbl_activecase.text=apidata[indexPath.row].active
        cell.lbl_recovered.text=apidata[indexPath.row].recovered
        cell.lbl_statecode.text=apidata[indexPath.row].statecode
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "state name", message: apidata[indexPath.row].state, preferredStyle: .alert)
        let ok = UIAlertAction(title: "yes", style: .default, handler: {ACTION in
            let secoundvc = self.storyboard?.instantiateViewController(identifier: "cell") as! secoundViewController
            secoundvc.lblstate=self.apidata[indexPath.row].state!
            secoundvc.lblstatecode=self.apidata[indexPath.row].statecode!
            secoundvc.lbllastupdate=self.apidata[indexPath.row].lastupdatetime!
            secoundvc.lblactive=self.apidata[indexPath.row].active!
            secoundvc.lblconfirmed=self.apidata[indexPath.row].confirmed!
            secoundvc.lbldeaths=self.apidata[indexPath.row].deaths!
            secoundvc.lblrecoverd=self.apidata[indexPath.row].recovered!
            self.navigationController?.pushViewController(alert, animated: true)
            
        })
        let  more  = UIAlertAction(title: "no", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
        
        
        
    }
    
    
    
}
