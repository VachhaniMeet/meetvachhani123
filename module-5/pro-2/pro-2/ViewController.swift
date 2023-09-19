//
//  ViewController.swift
//  pro-2
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to set accessory in tableview cell. */

import UIKit

class ViewController: UIViewController {
    
    var data = [""]
    var sub  = [""]
    var img  = [UIImage]()
    
    
    var city  = [""]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        data=["php","ios","angular","react","c","java"]
        sub = ["open source","apple inc","js framwork","computer program","pop language","secure language"]
        img=[#imageLiteral(resourceName: "php"),#imageLiteral(resourceName: "ios"),#imageLiteral(resourceName: "angular"),#imageLiteral(resourceName: "react"),#imageLiteral(resourceName: "c"),#imageLiteral(resourceName: "java")]
        city=["rajkot","surat","baroda","ahamdabad","kuchha","gondal"]
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==0
        {
            return data.count
        }
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        if indexPath.section==0
        {
            cell.textLabel?.text=data[indexPath.row]
            cell.detailTextLabel?.text=sub[indexPath.row]
            cell.imageView?.image=img[indexPath.row]
            cell.accessoryType = .detailButton
            
            cell.layer.masksToBounds=false
            cell.layer.shadowOpacity=0.23
            cell.layer.shadowRadius=4
            cell.layer.shadowOffset=CGSize(width: 0, height: 0)
            cell.layer.shadowColor=UIColor.green.cgColor
            cell.contentView.backgroundColor = .white
            cell.contentView.layer.cornerRadius=8
            return cell
        }
        else
        {
            cell.textLabel?.text=city[indexPath.row]
            cell.accessoryType = .checkmark
            return cell
        }
        
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section==0
        {
            return "   "
        }
        return ""
     
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?{
        if section==0
        {
            return " "
        }
        return " "
       
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
 
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let alert = UIAlertController(title: data[indexPath.row], message: sub[indexPath.row], preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
        let more = UIAlertAction(title: "more", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section==0
        {
            let secoundViewController = storyboard?.instantiateViewController(withIdentifier: "secoundViewController") as! secoundViewController
            secoundViewController.str_title=data[indexPath.row]
            secoundViewController.str_subtitle=sub[indexPath.row]
            secoundViewController.strimg=img[indexPath.row]
            navigationController?.pushViewController(secoundViewController, animated: true)
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if indexPath.section==0
        {
            if editingStyle == .delete
            {
                data.remove(at: indexPath.row)
                sub.remove(at: indexPath.row)
                img.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        }
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        if indexPath.section==0
        {
            let button = UITableViewRowAction(style: .default, title: "add") { (btn_add,indexPath) in
                
                print("add click....")
                let alert  = UIAlertController(title: "add", message: "please add your item..!", preferredStyle: .alert)
                let ok = UIAlertAction(title: "cancel", style: .default , handler: nil )
                let more = UIAlertAction(title: "add", style: .destructive, handler: nil)
                alert.addAction(ok)
                alert.addAction(more)
                self.present(alert, animated: true, completion: nil)
      }
            button.backgroundColor=UIColor.red
            let  button2 = UITableViewRowAction(style: .normal, title: "update"){(btn_update,indexPath) in
            print("update clicked.. !")
            }
            let button3 = UITableViewRowAction(style: .destructive, title: "delete"){(btn_delete,indexPath) in
                print("delete clicked...!")
                
            }
            return[button,button2,button3]
            }
        return nil
            
}
}
