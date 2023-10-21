//
//  homeViewController.swift
//  sqlite
//
//  Created by meet on 19/10/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet weak var txt_fullname: UITextField!
    @IBOutlet weak var txt_subject: UITextField!
    
    @IBOutlet weak var txt_city: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btn_save(_ sender: Any)
    {
        saveinfo()
    }
    
    @IBAction func btn_showdata(_ sender: Any)
    {
        let datavc = storyboard?.instantiateViewController(identifier: "datavc") as! dataViewController
        present(datavc, animated: true, completion: nil)
        
    }
    
    
    @IBAction func btn_update(_ sender: Any)
    {
        updateinfo()
    }
    
    @IBAction func btn_delete(_ sender: Any)
    {
        deleteinfo()
        
    }
    
    @IBAction func btn_logout(_ sender: Any)
    {
        UserDefaults.standard.setValue(false, forKey: "is_login")
        dismiss(animated: true, completion: nil)
    }
    
    func updateinfo ()
    {
        if txt_fullname.text==""||txt_subject.text==""||txt_city.text==""
        {
            let alert = UIAlertController(title: "error", message: "please input valid username and password", preferredStyle: .alert)
                       let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
                       alert.addAction(ok)
                       present(alert, animated: true, completion: nil)
                       
            txt_fullname.layer.borderColor=UIColor.brown.cgColor
                       txt_fullname.layer.borderWidth=2
                       
            txt_subject.layer.borderColor=UIColor.cyan.cgColor
                       txt_subject.layer.borderWidth=2
            
            txt_city.layer.borderColor=UIColor.darkText.cgColor
                                txt_city.layer.borderWidth=2
        }
        else
        {
            let newuser_query = "update data set sub='\(txt_subject.text!)',city='\(txt_city)',whare fullname='\(txt_fullname.text!)'"
            print(newuser_query)
            
            
            let dml = DMLOperations()
            let status = dml.dmlservices(query: newuser_query)
            
            if status==true
                     {
                         let alert = UIAlertController(title: "success", message: "signup successfully", preferredStyle: .alert)
                         let ok = UIAlertAction(title: "ok", style: .default, handler: {ACTION in
                             
                         
                         
                         self.txt_fullname.text=""
                         self.txt_subject.text=""
                         self.txt_city.text=""
                         
        })
                        alert.addAction(ok)
                        present(alert, animated: true, completion: nil)
    }
                    else
                     {
                         let alert = UIAlertController(title: "error", message: "somthing wrong..", preferredStyle: .alert)
                         let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
                         let more = UIAlertAction(title: "more", style: .destructive, handler: nil)
                         alert.addAction(ok)
                         alert.addAction(more)
                         present(alert, animated: true, completion: nil)
                         
                         
                         
            }
            
        }
    }
    func deleteinfo ()
    {
        if txt_fullname.text==""
        {
            let alert = UIAlertController(title: "error", message: "somthing wrong..", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
            txt_fullname.layer.borderColor=UIColor.red.cgColor
            txt_fullname.layer.borderWidth=2
        }
        else
        {
            let newuser_query = "delete from data whare fullname='\(txt_fullname.text!)'"
            print(newuser_query)
            
            let dml = DMLOperations()
            let status = dml.dmlservices(query: newuser_query)
            
            if status==true
            {
                let alert = UIAlertController(title: "success", message: "delete successfully", preferredStyle: .alert)
                              let ok = UIAlertAction(title: "ok", style: .default, handler: {ACTION in
                                  
                              
                              
                              self.txt_fullname.text=""
                              
                              self.navigationController?.popViewController(animated: true)
                              
                          })
                              alert.addAction(ok)
                              present(alert, animated: true, completion: nil)
                          
                
            }
            else
            {
                let alert = UIAlertController(title: "error", message: "somthing wrong..", preferredStyle: .alert)
                               let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
                               let more = UIAlertAction(title: "more", style: .destructive, handler: nil)
                               alert.addAction(ok)
                               alert.addAction(more)
                               present(alert, animated: true, completion: nil)
                               
                               
                
            }
        
        
    }
}
    func saveinfo ()
    {
        if txt_fullname.text==""||txt_subject.text==""||txt_city.text==""
        {
            
            let alert = UIAlertController(title: "error", message: "please details", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
            txt_fullname.layer.borderColor=UIColor.red.cgColor
            txt_fullname.layer.borderWidth=2
            
            txt_subject.layer.borderColor=UIColor.red.cgColor
            txt_subject.layer.borderWidth=2
            
            txt_city.layer.borderColor=UIColor.red.cgColor
            txt_city.layer.borderWidth=2
            
        }
        else
               {
                let newuser_query = "insert into data (fullname,sub,city)values('\(txt_fullname.text!),'\(txt_subject.text!)','\(txt_city.text!)'"
                   print(newuser_query)
                   
                   let dml = DMLOperations()
                   let status = dml.dmlservices(query: newuser_query)
                   
                   if status==true
                   {
                       let alert = UIAlertController(title: "success", message: "rescord inserted successfully", preferredStyle: .alert)
                                     let ok = UIAlertAction(title: "ok", style: .default, handler: {ACTION in
                                         
                                     
                                     
                                     self.txt_fullname.text=""
                                        self.txt_subject.text=""
                                        self.txt_city.text=""
                                     
                                     self.navigationController?.popViewController(animated: true)
                                     
                                 })
                                     alert.addAction(ok)
                                     present(alert, animated: true, completion: nil)
                                 
                       
                   }
                   else
                   {
                       let alert = UIAlertController(title: "error", message: "somthing wrong..", preferredStyle: .alert)
                                      let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
                                      let more = UIAlertAction(title: "more", style: .destructive, handler: nil)
                                      alert.addAction(ok)
                                      alert.addAction(more)
                                      present(alert, animated: true, completion: nil)
                                      
                                      
                       
                   }
               
               
           }
      
    }
}
